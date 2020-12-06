-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.MyShowcase_CategorySelector")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelectFilm_MyTheater = registerVal1
function CoD.SelectFilm_MyTheater.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelectFilm_MyTheater)
	registerVal2.id = "SelectFilm_MyTheater"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MyShowcase_CategorySelector.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 63.000000, 1213.000000)
	registerVal3:setTopBottom(true, false, 84.000000, 633.000000)
	registerVal3.FileshareCategorySelectoryListWidget.itemList:setDataSource("FileshareMyTheaterCategoriesList")
	registerVal2:addElement(registerVal3)
	registerVal2.MyShowcaseCategorySelector0 = registerVal3
	local function __FUNC_79E_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_7F5_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_79E_, __FUNC_7F5_, false)
	local function __FUNC_91A_(arg0)
		ClearSavedState(registerVal2, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_91A_)
	registerVal3.id = "MyShowcaseCategorySelector0"
	local function __FUNC_96D_(arg0, arg1)
		local registerVal2 = arg0.MyShowcaseCategorySelector0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_96D_)
	local function __FUNC_A83_(arg0)
		arg0.MyShowcaseCategorySelector0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A83_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

