-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemMaterialElement = registerVal1
function CoD.EmblemMaterialElement.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemMaterialElement)
	registerVal2.id = "EmblemMaterialElement"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(true, true, 5.000000, -5.000000)
	local function __FUNC_D4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "materialName", true, __FUNC_D4F_)
	registerVal2:addElement(registerVal4)
	registerVal2.emblemMaterial = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal5:setTopBottom(true, true, 5.000000, -5.000000)
	registerVal5:setRGB(0.200000, 0.200000, 0.200000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.bgImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -27.500000, 27.000000)
	registerVal6:setTopBottom(true, false, 17.000000, 50.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_brandgoldbar_small"))
	registerVal2:addElement(registerVal6)
	registerVal2.smallbargold = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -21.500000, 24.500000)
	registerVal7:setTopBottom(false, false, -22.000000, 24.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon"))
	registerVal2:addElement(registerVal7)
	registerVal2.blackMarketBrandIcon = registerVal7
	local registerVal8 = CoD.cac_lock.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal8:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.lockedIcon = registerVal8
	local registerVal9 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal9:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.IconNew = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_E00_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemMaterial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_E00_
	local function __FUNC_1065_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.background:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.background:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Focus = __FUNC_1065_
	local function __FUNC_127D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Over = __FUNC_127D_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_140F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemMaterial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.smallbargold:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_140F_
	local function __FUNC_1732_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.background:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.background:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.smallbargold:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Focus = __FUNC_1732_
	local function __FUNC_1A5F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Over = __FUNC_1A5F_
	registerVal10.BMClassified = registerVal11
	registerVal11 = {}
	local function __FUNC_1C51_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemMaterial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1C51_
	local function __FUNC_1EB5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.background:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.background:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemMaterial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Focus = __FUNC_1EB5_
	local function __FUNC_212E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemMaterial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Over = __FUNC_212E_
	registerVal10.Locked = registerVal11
	registerVal11 = {}
	local function __FUNC_231B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemMaterial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_231B_
	local function __FUNC_257D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.background:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.background:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_257D_
	local function __FUNC_27EF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Over = __FUNC_27EF_
	registerVal10.New = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "BMClassified"
	local function __FUNC_29D4_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal13.condition = __FUNC_29D4_
	local registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_2A4E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_2A4E_
	local registerVal15 = {}
	registerVal15.stateName = "New"
	local function __FUNC_2A99_(arg0, arg2, arg3)
		return Emblems_IsMaterialNew(arg2, arg1)
	end

	registerVal15.condition = __FUNC_2A99_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2AF7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_2AF7_)
	local function __FUNC_2C18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "materialID"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "materialID", true, __FUNC_2C18_)
	local function __FUNC_2D38_(arg0)
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.emblemMaterial:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2D38_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

