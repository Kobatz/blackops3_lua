-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreboardFFANameWidget = registerVal1
function CoD.ScoreboardFFANameWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ScoreboardFFANameWidget)
	registerVal2.id = "ScoreboardFFANameWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleGlow1 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 2.480000, 231.480000)
	registerVal4:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("WWWWWWWWWWWWWWWWW"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(0.500000)
	local function __FUNC_824_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_824_)
	registerVal2:addElement(registerVal4)
	registerVal2.FactionName = registerVal4
	local function __FUNC_885_(arg0)
		arg0.TitleGlow1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_885_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

