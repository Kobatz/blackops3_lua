-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareGroupQuotaLine")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareCategoryQuotas = registerVal1
function CoD.FileshareCategoryQuotas.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FileshareCategoryQuotas)
	registerVal2.id = "FileshareCategoryQuotas"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal3:setRGB(0.170000, 0.170000, 0.170000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(false, true, -365.000000, -5.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 184.000000)
	registerVal4:setWidgetType(CoD.FileshareGroupQuotaLine)
	registerVal4:setVerticalCount(6.000000)
	registerVal4:setDataSource("FileshareQuotaList")
	local function __FUNC_915_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "dirty", __FUNC_915_)
	local function __FUNC_972_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "MediaManager", "dirty", __FUNC_972_)
	registerVal2:addElement(registerVal4)
	registerVal2.List0 = registerVal4
	local registerVal5 = CoD.EmblemEditorFrame.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.EmblemEditorFrame0 = registerVal5
	registerVal4.id = "List0"
	local function __FUNC_9CE_(arg0, arg1)
		local registerVal2 = arg0.List0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_9CE_)
	local function __FUNC_ACD_(arg0)
		arg0.List0:close()
		arg0.EmblemEditorFrame0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ACD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

