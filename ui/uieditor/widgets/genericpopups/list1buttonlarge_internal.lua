-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.List1ButtonLarge_internal = registerVal1
function CoD.List1ButtonLarge_internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.List1ButtonLarge_internal)
	registerVal2.id = "List1ButtonLarge_internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 343.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 343.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 21.000000)
	registerVal3:setText(Engine.Localize("BUTTON"))
	registerVal3:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Text0 = registerVal3
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Disabled"
	local function __FUNC_6C7_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal7.condition = __FUNC_6C7_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_718_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_718_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

