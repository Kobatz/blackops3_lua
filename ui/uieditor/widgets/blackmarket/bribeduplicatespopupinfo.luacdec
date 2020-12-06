-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameAndCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BribeDuplicatesPopupInfo = registerVal1
function CoD.BribeDuplicatesPopupInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BribeDuplicatesPopupInfo)
	registerVal2.id = "BribeDuplicatesPopupInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 221.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 249.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 132.000000, 201.000000)
	registerVal3:setTopBottom(true, false, 21.000000, 96.000000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.057971, 0.053333, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.DuplicateBoxOutline = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 21.000000, 123.000000)
	registerVal4:setTopBottom(true, false, 33.500000, 65.500000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_14ED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "totalDuplicates", true, __FUNC_14ED_)
	registerVal2:addElement(registerVal4)
	registerVal2.totalDupeCount = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 22.000000, 124.000000)
	registerVal5:setTopBottom(true, false, 62.000000, 87.000000)
	registerVal5:setText(Engine.Localize("MPUI_BM_DUPLICATES"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.totalDupeText = registerVal5
	local registerVal6 = CoD.CryptokeyTypeNameAndCount.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 20.000000, 200.000000)
	registerVal6:setTopBottom(true, false, 111.000000, 138.000000)
	registerVal6.nameText:setText(Engine.Localize(LocalizeToUpperString("MPUI_BM_COMMON")))
	local function __FUNC_15A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "commonDuplicates", true, __FUNC_15A6_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Common"
	local function __FUNC_1679_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_1679_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_16C4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cryptoKeyType"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "cryptoKeyType", true, __FUNC_16C4_)
	registerVal2:addElement(registerVal6)
	registerVal2.CommonDupeCount = registerVal6
	local registerVal7 = CoD.CryptokeyTypeNameAndCount.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 20.000000, 200.000000)
	registerVal7:setTopBottom(true, false, 144.000000, 171.000000)
	registerVal7.nameText:setText(Engine.Localize(LocalizeToUpperString("MPUI_BM_RARE")))
	local function __FUNC_17E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "rareDuplicates", true, __FUNC_17E7_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Common"
	local function __FUNC_18B9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_18B9_
	local registerVal12 = {}
	registerVal12.stateName = "Rare"
	local function __FUNC_1905_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_1905_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1950_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cryptoKeyType"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "cryptoKeyType", true, __FUNC_1950_)
	registerVal2:addElement(registerVal7)
	registerVal2.CryptokeyTypeNameAndCount0 = registerVal7
	local registerVal8 = CoD.CryptokeyTypeNameAndCount.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 20.000000, 200.000000)
	registerVal8:setTopBottom(true, false, 177.000000, 204.000000)
	registerVal8.nameText:setText(Engine.Localize(LocalizeToUpperString("MPUI_BM_LEGENDARY")))
	local function __FUNC_1A73_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "legendaryDuplicates", true, __FUNC_1A73_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Common"
	local function __FUNC_1B45_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1B45_
	local registerVal13 = {}
	registerVal13.stateName = "Rare"
	local function __FUNC_1B91_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_1B91_
	local registerVal14 = {}
	registerVal14.stateName = "Legendary"
	local function __FUNC_1BDD_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_1BDD_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_1C28_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cryptoKeyType"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "cryptoKeyType", true, __FUNC_1C28_)
	registerVal2:addElement(registerVal8)
	registerVal2.CryptokeyTypeNameAndCount1 = registerVal8
	registerVal9 = CoD.CryptokeyTypeNameAndCount.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 20.000000, 200.000000)
	registerVal9:setTopBottom(true, false, 210.000000, 237.000000)
	registerVal9.nameText:setText(Engine.Localize(LocalizeToUpperString("MPUI_BM_EPIC")))
	local function __FUNC_1D4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "epicDuplicates", true, __FUNC_1D4B_)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Common"
	local function __FUNC_1E1D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_1E1D_
	registerVal14 = {}
	registerVal14.stateName = "Rare"
	local function __FUNC_1E69_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1E69_
	local registerVal15 = {}
	registerVal15.stateName = "Legendary"
	local function __FUNC_1EB5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_1EB5_
	local registerVal16 = {}
	registerVal16.stateName = "Epic"
	local function __FUNC_1F01_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal16.condition = __FUNC_1F01_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.CryptokeyTypeNameAndCount2 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 18.000000, 128.000000)
	registerVal10:setTopBottom(true, false, 21.000000, 96.000000)
	registerVal10:setAlpha(0.300000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.036364, 0.053333, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.DuplicateBoxOutline0 = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 137.000000, 195.000000)
	registerVal11:setTopBottom(true, false, 32.000000, 90.000000)
	registerVal11:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal11)
	registerVal2.CryptoKeyIcon = registerVal11
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_1F4C_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CommonDupeCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_1F4C_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_218B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CommonDupeCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_218B_
	registerVal12.NoDuplicates = registerVal13
	registerVal13 = {}
	local function __FUNC_23C7_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CommonDupeCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_23C7_
	registerVal12.HasEpic = registerVal13
	registerVal13 = {}
	local function __FUNC_2603_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CommonDupeCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_2603_
	registerVal12.HasLegendary = registerVal13
	registerVal13 = {}
	local function __FUNC_2844_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CommonDupeCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_2844_
	registerVal12.HasRare = registerVal13
	registerVal13 = {}
	local function __FUNC_2A88_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CommonDupeCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CryptokeyTypeNameAndCount2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_2A88_
	registerVal12.OnlyCommon = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "NoDuplicates"
	local function __FUNC_2CCC_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "totalDuplicates", 0.000000)
	end

	registerVal15.condition = __FUNC_2CCC_
	registerVal16 = {}
	registerVal16.stateName = "HasEpic"
	local function __FUNC_2D53_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "epicDuplicates", 0.000000)
	end

	registerVal16.condition = __FUNC_2D53_
	local registerVal17 = {}
	registerVal17.stateName = "HasLegendary"
	local function __FUNC_2DDA_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "legendaryDuplicates", 0.000000)
	end

	registerVal17.condition = __FUNC_2DDA_
	local registerVal18 = {}
	registerVal18.stateName = "HasRare"
	local function __FUNC_2E67_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "rareDuplicates", 0.000000)
	end

	registerVal18.condition = __FUNC_2E67_
	local registerVal19 = {}
	registerVal19.stateName = "OnlyCommon"
	local function __FUNC_2EEE_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "commonDuplicates", 0.000000)
	end

	registerVal19.condition = __FUNC_2EEE_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_2F78_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "totalDuplicates"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "totalDuplicates", true, __FUNC_2F78_)
	local function __FUNC_309D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "epicDuplicates"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "epicDuplicates", true, __FUNC_309D_)
	local function __FUNC_31C0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "legendaryDuplicates"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "legendaryDuplicates", true, __FUNC_31C0_)
	local function __FUNC_32E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rareDuplicates"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rareDuplicates", true, __FUNC_32E9_)
	local function __FUNC_340C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "commonDuplicates"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "commonDuplicates", true, __FUNC_340C_)
	local function __FUNC_3532_(arg0)
		arg0.CommonDupeCount:close()
		arg0.CryptokeyTypeNameAndCount0:close()
		arg0.CryptokeyTypeNameAndCount1:close()
		arg0.CryptokeyTypeNameAndCount2:close()
		arg0.totalDupeCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3532_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

