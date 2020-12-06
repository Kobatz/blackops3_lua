-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_button_HexBlurWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_button_HexBlur = registerVal1
function CoD.vhud_button_HexBlur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_button_HexBlur)
	registerVal2.id = "vhud_button_HexBlur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 73.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_button_HexBlurWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 73.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudbuttonHexBlurWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_774_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_774_
	local function __FUNC_7D6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Active = __FUNC_7D6_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_836_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_836_
	local function __FUNC_896_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_896_
	registerVal4.Active = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Active"
	local function __FUNC_8F6_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "text", "")
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_8F6_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_979_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "text"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "text", true, __FUNC_979_)
	local function __FUNC_A92_(arg0)
		arg0.vhudbuttonHexBlurWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A92_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

