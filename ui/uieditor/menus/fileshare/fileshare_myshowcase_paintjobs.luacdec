-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.TabbedWidgets.craftTabList")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.FileShare.FileshareSelector")
function LUI.createMenu.Fileshare_MyShowcase_Paintjobs(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Fileshare_MyShowcase_Paintjobs")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Fileshare_MyShowcase_Paintjobs.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, 292.000000, 294.000000)
	registerVal3:setRGB(0.010000, 0.020000, 0.020000)
	registerVal3:setAlpha(0.700000)
	registerVal1:addElement(registerVal3)
	registerVal1.HelpBacking00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, -5.000000, 83.000000)
	registerVal4:setRGB(0.000000, 0.020000, 0.030000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleBacking0 = registerVal4
	local registerVal5 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal5:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.TitleDotsWidget0 = registerVal5
	local registerVal6 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 64.000000, 447.000000)
	registerVal6:setTopBottom(true, false, 91.000000, 680.000000)
	registerVal6:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal6)
	registerVal1.LeftPanel = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListPanel = registerVal7
	local registerVal8 = CoD.craftTabList.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 39.000000, 1129.000000)
	registerVal8:setTopBottom(true, false, 84.000000, 120.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal8.grid:setDataSource("FilesharePublishedPaintjobTabs")
	registerVal8.grid:setWidgetType(CoD.paintshopTabWidget)
	registerVal8.grid:setHorizontalCount(8.000000)
	local function __FUNC_14DB_(arg1, arg2)
		FilesharePublishedTabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal8:registerEventHandler("list_active_changed", __FUNC_14DB_)
	registerVal1:addElement(registerVal8)
	registerVal1.tabList = registerVal8
	local registerVal9 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, -71.250000, 506.750000)
	registerVal9:setTopBottom(true, false, -5.500000, 140.500000)
	registerVal9.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_PAINTJOBS_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.cac3dTitleIntermediary0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal10:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListLine = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -68.000000, 0.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.HelpBacking0 = registerVal11
	local registerVal12 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 11.000000, 78.870000)
	registerVal12:setTopBottom(true, false, 48.000000, 718.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.ElemsSideList = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 64.000000, 181.000000)
	registerVal13:setTopBottom(true, false, 11.000000, 32.500000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.MyShowcaseBG = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 68.000000, 160.000000)
	registerVal14:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setText(Engine.Localize("MENU_MEDIA_MYSHOWCASE"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.MyShowcase = registerVal14
	local registerVal15 = CoD.FileshareSelector.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 64.000000, 984.000000)
	registerVal15:setTopBottom(true, false, 140.500000, 668.500000)
	registerVal1:addElement(registerVal15)
	registerVal1.FileshareSelector0 = registerVal15
	local function __FUNC_1546_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		SetHeadingKickerText("MENU_SHOWCASE")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1546_)
	local function __FUNC_161F_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1670_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_161F_, __FUNC_1670_, false)
	registerVal15.id = "FileshareSelector0"
	local registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	local registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.FileshareSelector0:processEvent(registerVal18)
	end
	local function __FUNC_176B_(arg1)
		arg1.TitleDotsWidget0:close()
		arg1.LeftPanel:close()
		arg1.tabList:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.ElemsSideList:close()
		arg1.FileshareSelector0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Fileshare_MyShowcase_Paintjobs.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_176B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

