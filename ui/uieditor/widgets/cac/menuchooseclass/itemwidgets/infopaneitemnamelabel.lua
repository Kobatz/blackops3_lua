-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.InfoPaneItemNameLabel = registerVal1
function CoD.InfoPaneItemNameLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.InfoPaneItemNameLabel)
	registerVal2.id = "InfoPaneItemNameLabel"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -2.500000, 2.500000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleGlow1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -52.930000, 49.070000)
	registerVal4:setTopBottom(false, false, -30.000000, 43.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal5:setTopBottom(false, false, -15.000000, 17.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(0.600000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_AC1_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_AC1_)
	registerVal2:addElement(registerVal5)
	registerVal2.itemName = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 3.000000)
	registerVal6:setTopBottom(true, false, 0.710000, 34.000000)
	registerVal6:setRGB(1.000000, 0.610000, 0.150000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Guide = registerVal6
	local function __FUNC_B21_(arg0)
		arg0.TitleGlow1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B21_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

