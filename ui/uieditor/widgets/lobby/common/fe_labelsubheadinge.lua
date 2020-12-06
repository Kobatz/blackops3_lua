-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeaderPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_LabelSubHeadingE = registerVal1
function CoD.FE_LabelSubHeadingE.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_LabelSubHeadingE)
	registerVal2.id = "FE_LabelSubHeadingE"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 66.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.FE_ListSubHeaderPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListSubHeaderPanel0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 7.000000, 94.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 21.000000)
	registerVal4:setText("")
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	local function __FUNC_73B_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_73B_)
	local function __FUNC_7DD_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_7DD_)
	registerVal2:addElement(registerVal4)
	registerVal2.Label0 = registerVal4
	local function __FUNC_83D_(arg0)
		arg0.FEListSubHeaderPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_83D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

