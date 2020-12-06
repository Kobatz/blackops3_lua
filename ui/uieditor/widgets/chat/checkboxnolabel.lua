-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.checkboxNoLabel = registerVal1
function CoD.checkboxNoLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.checkboxNoLabel)
	registerVal2.id = "checkboxNoLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 14.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox_empty"))
	registerVal2:addElement(registerVal3)
	registerVal2.checkboxBkg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox"))
	registerVal2:addElement(registerVal4)
	registerVal2.checkboxCheck = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6B2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.checkboxBkg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkboxBkg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkboxCheck:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6B2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_86B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.checkboxBkg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkboxCheck:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkboxCheck:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_86B_
	registerVal5.Checked = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Checked"
	local function __FUNC_A02_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "checked")
	end

	registerVal8.condition = __FUNC_A02_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_A73_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "checked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "checked", true, __FUNC_A73_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

