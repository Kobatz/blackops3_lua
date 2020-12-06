-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
require("ui.uieditor.widgets.BackgroundFrames.BackgroundPattern02")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.InfoPaneItemVariantName = registerVal1
function CoD.InfoPaneItemVariantName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.InfoPaneItemVariantName)
	registerVal2.id = "InfoPaneItemVariantName"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 3.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleGlow1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -52.930000, 49.070000)
	registerVal4:setTopBottom(false, false, -30.000000, 43.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -18.000000, 18.000000)
	registerVal5:setAlpha(0.370000)
	registerVal2:addElement(registerVal5)
	registerVal2.CACvarientTitlePanel0 = registerVal5
	local registerVal6 = CoD.BackgroundPattern02.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -18.000000, 18.000000)
	registerVal6:setRGB(0.280000, 0.280000, 0.310000)
	registerVal6:setAlpha(0.430000)
	registerVal2:addElement(registerVal6)
	registerVal2.BackgroundPattern020 = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 14.000000, 83.800000)
	registerVal7:setTopBottom(false, false, -15.000000, 17.000000)
	registerVal7:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setLetterSpacing(0.600000)
	local function __FUNC_AF5_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal7, "setText", __FUNC_AF5_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemName = registerVal7
	local function __FUNC_B55_(arg0)
		arg0.TitleGlow1:close()
		arg0.CACvarientTitlePanel0:close()
		arg0.BackgroundPattern020:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B55_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

