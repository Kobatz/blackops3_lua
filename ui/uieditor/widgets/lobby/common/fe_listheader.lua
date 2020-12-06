-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ListHeader = registerVal1
function CoD.FE_ListHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ListHeader)
	registerVal2.id = "FE_ListHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 117.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListHeaderGlow0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 9.000000, 320.000000)
	registerVal4:setTopBottom(false, true, -23.000000, -3.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("FEATURED"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8B3_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_8B3_)
	registerVal2:addElement(registerVal4)
	registerVal2.btnDisplayTextStroke = registerVal4
	local function __FUNC_911_(arg0)
		arg0.FEListHeaderGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_911_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

