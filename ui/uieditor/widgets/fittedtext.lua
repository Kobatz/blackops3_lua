-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
local function __FUNC_211_(arg0, arg1)
	local function __FUNC_2C0_(arg1)
		local registerVal3 = arg0.text:getTextWidth()
		arg0:setWidth((registerVal3 + 6.000000))
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.text, "setText", __FUNC_2C0_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FittedText = registerVal2
local function __FUNC_34F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FittedText)
	registerVal2.id = "FittedText"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 3.000000, 60.000000)
	registerVal4:setTopBottom(true, false, 1.500000, 21.500000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_7FE_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_7FE_)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local function __FUNC_85D_(arg0)
		arg0.Panel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_85D_)
	if __FUNC_211_ then
		__FUNC_211_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FittedText.new = __FUNC_34F_
