-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ListHeaderFull = registerVal1
function CoD.FE_ListHeaderFull.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ListHeaderFull)
	registerVal2.id = "FE_ListHeaderFull"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 29.000000)
	local registerVal3 = CoD.FE_ListHeader.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 30.000000)
	registerVal3:setZoom(5.000000)
	registerVal3.btnDisplayTextStroke:setText(Engine.Localize("QUICK JOIN"))
	registerVal2:addElement(registerVal3)
	registerVal2.FEListHeader0 = registerVal3
	local function __FUNC_5D4_(arg0)
		arg0.FEListHeader0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5D4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

