-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsVariantDescription = registerVal1
function CoD.WeaponBuildKitsVariantDescription.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsVariantDescription)
	registerVal2.id = "WeaponBuildKitsVariantDescription"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 328.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 328.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -164.000000, 164.000000)
	registerVal4:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal4:setText(Engine.Localize("ZMUI_CUSTOMIZE_FOR_WALL_BUYS_AND_MYSTERY_BOXES"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLineSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_80B_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_80B_)
	registerVal2:addElement(registerVal4)
	registerVal2.highlightedDescription = registerVal4
	local function __FUNC_874_(arg0)
		arg0.CACvarientTitlePanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_874_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

