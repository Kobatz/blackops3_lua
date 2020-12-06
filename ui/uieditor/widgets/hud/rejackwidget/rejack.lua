-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.RejackWidget.RejackInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Rejack = registerVal1
function CoD.Rejack.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Rejack)
	registerVal2.id = "Rejack"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 300.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.RejackInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 4.000000, 600.000000, 300.000000)
	registerVal3:setUI3DWindow(4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.RejackInternal = registerVal3
	local function __FUNC_584_(arg0)
		arg0.RejackInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_584_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

