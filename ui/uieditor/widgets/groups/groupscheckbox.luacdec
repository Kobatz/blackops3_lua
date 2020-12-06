-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsCheckbox = registerVal1
function CoD.GroupsCheckbox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsCheckbox)
	registerVal2.id = "GroupsCheckbox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 14.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox_empty"))
	registerVal2:addElement(registerVal3)
	registerVal2.checkboxBkg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -12.000000, -2.000000)
	registerVal4:setTopBottom(false, false, -5.000000, 5.000000)
	registerVal4:setRGB(0.550000, 0.770000, 0.250000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal4)
	registerVal2.SelectedIcon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal5:setRGB(0.550000, 0.770000, 0.250000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox"))
	registerVal2:addElement(registerVal5)
	registerVal2.checkboxCheck = registerVal5
	local registerVal6 = CoD.Border.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(1.000000, 0.410000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.focusBorder = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_9DC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.checkboxBkg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkboxBkg:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SelectedIcon:setLeftRight(false, true, -13.000000, -1.000000)
		registerVal2.SelectedIcon:setTopBottom(false, false, -6.000000, 6.000000)
		registerVal2.SelectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxCheck:setRGB(0.550000, 0.770000, 0.250000)
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.focusBorder:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.focusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_9DC_
	local function __FUNC_D12_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.checkboxBkg:setRGB(1.000000, 0.640000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SelectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.focusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_D12_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_F43_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.checkboxBkg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SelectedIcon:setLeftRight(false, true, -13.000000, -1.000000)
		registerVal2.SelectedIcon:setTopBottom(false, false, -6.000000, 6.000000)
		registerVal2.SelectedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.focusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F43_
	local function __FUNC_11FE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.checkboxBkg:setRGB(1.000000, 0.440000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SelectedIcon:setLeftRight(false, true, -13.000000, -1.000000)
		registerVal2.SelectedIcon:setTopBottom(false, false, -6.000000, 6.000000)
		registerVal2.SelectedIcon:setRGB(0.550000, 0.770000, 0.250000)
		registerVal2.SelectedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.focusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_11FE_
	registerVal7.Checked = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Checked"
	local function __FUNC_14F2_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "selected")
	end

	registerVal10.condition = __FUNC_14F2_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_1564_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_1564_)
	local function __FUNC_1682_(arg0)
		arg0.focusBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1682_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

