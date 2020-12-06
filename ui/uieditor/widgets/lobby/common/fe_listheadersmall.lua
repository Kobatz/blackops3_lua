-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ListHeaderSmall = registerVal1
function CoD.FE_ListHeaderSmall.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ListHeaderSmall)
	registerVal2.id = "FE_ListHeaderSmall"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 117.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListHeaderGlow0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -383.000000, -6.000000)
	registerVal4:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("FEATURED"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_7C8_(arg0, arg1)
		ScaleWidgetToLabelRightAligned(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_7C8_)
	registerVal2:addElement(registerVal4)
	registerVal2.btnDisplayTextStroke = registerVal4
	local function __FUNC_835_(arg0)
		arg0.FEListHeaderGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_835_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

