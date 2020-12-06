-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.Common.GroupsBetaInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsBetaWidget = registerVal1
function CoD.GroupsBetaWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsBetaWidget)
	registerVal2.id = "GroupsBetaWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsBetaInternal.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -200.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal3.Label:setText(LocalizeToUpperString("GROUPS_BETA"))
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsBetaInternal = registerVal3
	local function __FUNC_5AC_(arg0)
		arg0.GroupsBetaInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5AC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

