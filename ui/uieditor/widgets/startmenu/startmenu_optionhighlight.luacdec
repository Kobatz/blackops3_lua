-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_WhiteGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_OptionHighlight = registerVal1
function CoD.StartMenu_OptionHighlight.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_OptionHighlight)
	registerVal2.id = "StartMenu_OptionHighlight"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = CoD.StartMenu_WhiteGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -3.000000, 4.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuWhiteGlow = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 1.000000, 276.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 30.000000)
	registerVal4:setText(Engine.Localize("Look Inversion"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(1.000000)
	local function __FUNC_89D_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_89D_)
	registerVal2:addElement(registerVal4)
	registerVal2.DescTitle = registerVal4
	local function __FUNC_8FD_(arg0)
		arg0.StartMenuWhiteGlow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8FD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

