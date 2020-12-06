-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.PrestigeRewards.prestigeRewardWidget_UI3D")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.prestigeRewardWidget = registerVal1
function CoD.prestigeRewardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.prestigeRewardWidget)
	registerVal2.id = "prestigeRewardWidget"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 125.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = CoD.prestigeRewardWidget_UI3D.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 125.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	Engine.SetupUI3DWindow(arg1, 5.000000, 125.000000, 25.000000)
	registerVal3:setUI3DWindow(5.000000)
	registerVal3:setRGB(0.000000, 0.590000, 0.960000)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local function __FUNC_5E2_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5E2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

