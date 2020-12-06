-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.TipWidgetInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TipWidget = registerVal1
function CoD.TipWidget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TipWidget)
	registerVal2.id = "TipWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal3 = CoD.TipWidgetInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 1249.000000)
	registerVal3:setTopBottom(true, false, 13.000000, 35.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.spacer = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1249.000000, 1313.000000)
	registerVal4:setTopBottom(true, false, 24.000000, 31.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image2 = registerVal4
	local function __FUNC_6E8_(arg0)
		arg0.spacer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6E8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

