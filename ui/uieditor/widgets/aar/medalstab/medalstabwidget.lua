-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.MedalsTab.MedalsGridItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.AAR.MedalsTab.MedalPreviewWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MedalsTabWidget = registerVal1
function CoD.MedalsTabWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MedalsTabWidget)
	registerVal2.id = "MedalsTabWidget"
	registerVal2.soundSet = "AAR"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 8.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 445.770000, 1177.770000)
	registerVal3:setTopBottom(true, false, 27.000000, 493.000000)
	registerVal3:setDataSource("AARMedalsList")
	registerVal3:setWidgetType(CoD.MedalsGridItem)
	registerVal3:setHorizontalCount(4.000000)
	registerVal3:setVerticalCount(3.000000)
	registerVal3:setSpacing(8.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal2:addElement(registerVal3)
	registerVal2.MedalsGrid = registerVal3
	local registerVal4 = CoD.MedalPreviewWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 66.710000, 439.280000)
	registerVal4:setTopBottom(true, false, 25.000000, 511.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.MedalPreviewWidget0 = registerVal4
	local function __FUNC_8B8_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_8B8_)
	registerVal3.id = "MedalsGrid"
	local function __FUNC_90A_(arg0, arg1)
		local registerVal2 = arg0.MedalsGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_90A_)
	local function __FUNC_A0E_(arg0)
		arg0.MedalsGrid:close()
		arg0.MedalPreviewWidget0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A0E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

