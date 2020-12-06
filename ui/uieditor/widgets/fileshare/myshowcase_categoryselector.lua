-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareCategorySelectoryListWidget")
require("ui.uieditor.widgets.FileShare.MyShowcase_CategoryLabel")
local function __FUNC_281_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	registerVal3 = Engine.CreateModel(registerVal2, "listVerticalCount", false)
	local registerVal4 = Engine.CreateModel(registerVal2, "isNormalSize", false)
	local registerVal5 = Engine.CreateModel(registerVal2, "summaryFileUpdated", false)
	local registerVal6 = Engine.CreateModel(registerVal2, "itemsCount", false)
	Engine.SetModelValue(registerVal4, false)
	Engine.SetModelValue(registerVal3, 3.000000)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MyShowcase_CategorySelector = registerVal2
local function __FUNC_465_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_281_ then
		__FUNC_281_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MyShowcase_CategorySelector)
	registerVal2.id = "MyShowcase_CategorySelector"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 580.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FileshareCategorySelectoryListWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 10.000000, 301.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal3.itemList:setDataSource("FileshareCategoriesList")
	registerVal2:addElement(registerVal3)
	registerVal2.FileshareCategorySelectoryListWidget = registerVal3
	local registerVal4 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal4:setLeftRight(true, false, 320.040000, 1123.420000)
	registerVal4:setTopBottom(true, false, 0.000000, 538.350000)
	registerVal2:addElement(registerVal4)
	registerVal2.Frame = registerVal4
	local registerVal5 = CoD.MyShowcase_CategoryLabel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 331.040000, 1159.000000)
	registerVal5:setTopBottom(true, false, -23.380000, -4.380000)
	registerVal2:addElement(registerVal5)
	registerVal2.MyShowcaseCategoryLabel = registerVal5
	local function __FUNC_B80_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:changeFrameWidget(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal3.itemList, "tabWidget", true, __FUNC_B80_)
	local function __FUNC_C1E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.categoryName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.itemList, "displayText", true, __FUNC_C1E_)
	local registerVal6 = {}
	registerVal6.right = registerVal4
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal3
	registerVal4.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_CF8_(arg0)
		FileshareSummaryFileUpdate(arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "summaryFileUpdated", __FUNC_CF8_)
	registerVal3.id = "FileshareCategorySelectoryListWidget"
	registerVal4.id = "Frame"
	local function __FUNC_D58_(arg0, arg1)
		local registerVal2 = arg0.FileshareCategorySelectoryListWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D58_)
	local function __FUNC_E78_(arg0)
		arg0.FileshareCategorySelectoryListWidget:close()
		arg0.MyShowcaseCategoryLabel:close()
		arg0.Frame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E78_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MyShowcase_CategorySelector.new = __FUNC_465_
