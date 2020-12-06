-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsSummaryTBD")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BadgesTab = registerVal1
function CoD.BadgesTab.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.BadgesTab)
	registerVal2.id = "BadgesTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 461.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1035.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 460.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.GroupsSummaryTBD.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 503.000000, 649.000000)
	registerVal4:setTopBottom(true, false, 153.500000, 281.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsSummaryTBD0 = registerVal4
	local function __FUNC_5EC_(arg0)
		arg0.GroupsSummaryTBD0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5EC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

