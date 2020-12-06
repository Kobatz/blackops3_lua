-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZMPromotional.ZM_PromoListItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_PromoIconList = registerVal1
function CoD.ZM_PromoIconList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_PromoIconList)
	registerVal2.id = "ZM_PromoIconList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 202.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:setLeftRight(true, false, 0.000000, 202.000000)
	registerVal3:setTopBottom(false, false, -24.500000, 24.500000)
	registerVal3:setWidgetType(CoD.ZM_PromoListItem)
	registerVal3:setHorizontalCount(4.000000)
	registerVal3:setDataSource("ZMPromoIconList")
	registerVal2:addElement(registerVal3)
	registerVal2.GridLayout0 = registerVal3
	local function __FUNC_623_(arg0)
		arg0.GridLayout0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_623_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

