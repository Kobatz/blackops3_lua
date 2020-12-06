-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Equipment.BlackHat.BlackHat_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackHat = registerVal1
function CoD.BlackHat.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackHat)
	registerVal2.id = "BlackHat"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 256.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BlackHat_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 0.000000, 256.000000, 256.000000)
	registerVal3:setUI3DWindow(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local function __FUNC_59D_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_59D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

