-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareCategorySelectoryListWidget")
local function __FUNC_225_(arg0, arg1)
	CoD.FileshareUtility.SetFileshareMode(arg1, Enum.FileshareMode.FILESHARE_MODE_GROUPS)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	registerVal3 = Engine.CreateModel(registerVal2, "summaryFileUpdated", false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ShowcaseTab = registerVal2
local function __FUNC_3D5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_225_ then
		__FUNC_225_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ShowcaseTab)
	registerVal2.id = "ShowcaseTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 461.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 310.040000)
	registerVal3:setTopBottom(true, false, -29.000000, 582.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1035.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 460.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background = registerVal4
	local registerVal5 = CoD.FileshareCategorySelectoryListWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 14.000000, 294.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal5.itemList:setDataSource("GroupsShowcaseButtons")
	registerVal2:addElement(registerVal5)
	registerVal2.FileshareCategorySelectoryListWidget = registerVal5
	local registerVal6 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal6:setLeftRight(true, false, 310.040000, 1113.420000)
	registerVal6:setTopBottom(true, false, 0.000000, 495.000000)
	local function __FUNC_B71_(arg0, arg2)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg2)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg2)
			end
		end
		SetFocusToElement(registerVal2, "FileshareCategorySelectoryListWidget", arg1)
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_B71_)
	registerVal2:addElement(registerVal6)
	registerVal2.Frame = registerVal6
	local function __FUNC_C9F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:changeFrameWidget(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal5.itemList, "tabWidget", true, __FUNC_C9F_)
	local registerVal7 = {}
	registerVal7.right = registerVal6
	registerVal5.navigation = registerVal7
	registerVal7 = {}
	registerVal7.left = registerVal5
	registerVal6.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_D3A_(arg0)
		FileshareSummaryFileUpdate(arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "summaryFileUpdated", __FUNC_D3A_)
	registerVal5.id = "FileshareCategorySelectoryListWidget"
	registerVal6.id = "Frame"
	local function __FUNC_D98_(arg0, arg1)
		local registerVal2 = arg0.FileshareCategorySelectoryListWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D98_)
	local function __FUNC_EB8_(arg0)
		arg0.FileshareCategorySelectoryListWidget:close()
		arg0.Frame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EB8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ShowcaseTab.new = __FUNC_3D5_
