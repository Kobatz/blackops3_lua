-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_IconHex")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreSelectionAbilityWidget = registerVal1
function CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreSelectionAbilityWidget)
	registerVal2.id = "CybercoreSelectionAbilityWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 82.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 95.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AbilityWheelIconHex0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -41.000000, 41.000000)
	registerVal4:setTopBottom(false, false, -41.000000, 41.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setupUIStreamedImage(0.000000)
	local function __FUNC_7B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_7B2_)
	registerVal2:addElement(registerVal4)
	registerVal2.abilityIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_864_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.abilityIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_864_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_967_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.abilityIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_967_
	registerVal5.Active = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Active"
	local function __FUNC_A62_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "enabled")
	end

	registerVal8.condition = __FUNC_A62_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_AD3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "enabled", true, __FUNC_AD3_)
	local function __FUNC_BED_(arg0)
		arg0.AbilityWheelIconHex0:close()
		arg0.abilityIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BED_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

