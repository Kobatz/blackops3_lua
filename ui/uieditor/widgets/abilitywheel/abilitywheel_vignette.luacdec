-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_VignetteInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Vignette = registerVal1
function CoD.AbilityWheel_Vignette.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Vignette)
	registerVal2.id = "AbilityWheel_Vignette"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = CoD.AbilityWheel_VignetteInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setAlpha(0.990000)
	registerVal2:addElement(registerVal3)
	registerVal2.AbilityWheelVignetteInternal0 = registerVal3
	local function __FUNC_56D_(arg0)
		arg0.AbilityWheelVignetteInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_56D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

