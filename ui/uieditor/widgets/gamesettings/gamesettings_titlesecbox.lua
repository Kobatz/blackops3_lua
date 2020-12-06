-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_textboxBG")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_titlesecbox = registerVal1
function CoD.GameSettings_titlesecbox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_titlesecbox)
	registerVal2.id = "GameSettings_titlesecbox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = CoD.GameSettings_textboxBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GameSettingstextboxBG = registerVal3
	local registerVal4 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.500000, 2.500000)
	registerVal4:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.950000)
	registerVal2:addElement(registerVal4)
	registerVal2.TitleGlow1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -53.430000, 48.570000)
	registerVal5:setTopBottom(false, false, -30.000000, 43.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 4.000000, 553.000000)
	registerVal6:setTopBottom(false, false, -12.000000, 10.000000)
	registerVal6:setText(Engine.Localize(LocalizeIntoString("", "MENU_NEXT_LEVEL_XP_ARG")))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(0.600000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C7B_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_C7B_)
	registerVal2:addElement(registerVal6)
	registerVal2.Textbox = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -25.000000, 7.000000)
	registerVal7:setTopBottom(false, false, -27.000000, 27.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setYRot(-180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelb"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.pixelb = registerVal7
	local function __FUNC_CD9_(arg0)
		arg0.GameSettingstextboxBG:close()
		arg0.TitleGlow1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CD9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

