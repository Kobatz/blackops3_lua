-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsSummary")
require("ui.uieditor.widgets.Groups.GroupOverviewContentPanel")
local function __FUNC_25D_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	registerVal3 = Engine.CreateModel(registerVal2, "summaryFileUpdated", false)
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.CreateModel(registerVal6, "groups.showFullScreenshot")
	Engine.SetModelValue(registerVal5, true)
end

local function __FUNC_3E9_(arg0, arg1)
	FileshareCategorySelectorCategoryChanged(arg1, "featured", nil, true)
	if CoD.isPC then
		arg0.GroupOverviewContentPanel:setMouseDisabled(true)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.OverviewTab = registerVal3
local function __FUNC_4F8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_25D_ then
		__FUNC_25D_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OverviewTab)
	registerVal2.id = "OverviewTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 461.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsSummary.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 769.000000, 1112.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 456.000000)
	local function __FUNC_989_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "SelectedGroup", nil, __FUNC_989_)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsSummary = registerVal3
	local registerVal4 = CoD.GroupOverviewContentPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 109.000000, 755.000000)
	registerVal4:setTopBottom(true, false, -23.000000, 492.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupOverviewContentPanel = registerVal4
	local function __FUNC_9DA_(arg0)
		SetControllerModelValue(arg1, "groups.showFullScreenshot", false)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_9DA_)
	local function __FUNC_A5C_(arg0)
		FileshareSummaryFileUpdate(arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "summaryFileUpdated", __FUNC_A5C_)
	registerVal4.id = "GroupOverviewContentPanel"
	local function __FUNC_ABC_(arg0)
		arg0.GroupsSummary:close()
		arg0.GroupOverviewContentPanel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ABC_)
	if __FUNC_3E9_ then
		__FUNC_3E9_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.OverviewTab.new = __FUNC_4F8_
