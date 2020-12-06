-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareSelectorList")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.FileShare.FileshareCategoryQuotas")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
local function __FUNC_334_(arg0, arg1)
	CoD.FileshareUtility.SetInShowcaseManager(arg1, true)
	CoD.FileshareUtility.SetShowCreateButton(FileshareCanBuyMoreSlots(arg1))
end

local function __FUNC_438_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Fileshare_ShowcaseManager")
	if __FUNC_334_ then
		__FUNC_334_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Fileshare_ShowcaseManager.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 3.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 122.500000, 684.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.TabBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 82.210000, 384.210000)
	registerVal5:setTopBottom(true, false, 119.000000, 680.500000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.600000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal5:setShaderVector(0.000000, 0.010000, 0.010000, 0.010000, 0.010000)
	registerVal1:addElement(registerVal5)
	registerVal1.BG = registerVal5
	local registerVal6 = CoD.FileshareSelectorList.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 62.340000, 982.340000)
	registerVal6:setTopBottom(true, false, 139.000000, 679.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.FileshareSelectorList0 = registerVal6
	local registerVal7 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal7:setTopBottom(true, false, 89.880000, 707.130000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEMenuLeftGraphics = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, -5.000000, 83.000000)
	registerVal8:setRGB(0.000000, 0.020000, 0.030000)
	registerVal1:addElement(registerVal8)
	registerVal1.TitleBacking0 = registerVal8
	local registerVal9 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal9:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.TitleDotsWidget0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal10:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListPanel = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal11:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal11:setRGB(0.900000, 0.900000, 0.900000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal11)
	registerVal1.CategoryListLine = registerVal11
	local registerVal12 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 0.000000, 2496.000000)
	registerVal12:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal12.Tabs.grid:setHorizontalCount(8.000000)
	registerVal12.Tabs.grid:setDataSource("FileshareShowcaseManagerTabs")
	local function __FUNC_184E_(arg1, arg2)
		FileshareShowcaseManagerTabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal12:registerEventHandler("list_active_changed", __FUNC_184E_)
	registerVal1:addElement(registerVal12)
	registerVal1.tabList = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, true, -68.000000, 0.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.HelpBacking0 = registerVal13
	local registerVal14 = CoD.FileshareCategoryQuotas.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 805.340000, 1175.340000)
	registerVal14:setTopBottom(true, false, 166.000000, 414.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.FileshareCategoryQuotas0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 805.340000, 1175.340000)
	registerVal15:setTopBottom(true, false, 147.000000, 166.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.800000)
	registerVal1:addElement(registerVal15)
	registerVal1.QuotaListHeader = registerVal15
	local registerVal16 = LUI.UITightText.new()
	registerVal16:setLeftRight(true, false, 812.820000, 1180.340000)
	registerVal16:setTopBottom(true, false, 148.000000, 165.000000)
	registerVal16:setText(Engine.Localize("MENU_FILESHARE_QUOTA_HEADER_CAPS"))
	registerVal16:setTTF("fonts/escom.ttf")
	registerVal16:setLetterSpacing(1.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.QuotaListHeaderLabel = registerVal16
	local registerVal17 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal17.titleLabel:setText(Engine.Localize("MENU_FILESHARE_SHOWCASE_MANAGER_CAPS"))
	registerVal17.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FILESHARE_SHOWCASE_MANAGER_CAPS"))
	registerVal1:addElement(registerVal17)
	registerVal1.MenuFrame = registerVal17
	local registerVal18 = {}
	registerVal18.up = registerVal14
	registerVal18.right = registerVal14
	registerVal6.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal6
	registerVal18.down = registerVal6
	registerVal14.navigation = registerVal18
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_18C0_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_18C0_)
	local function __FUNC_196B_(arg0, arg1, arg2, arg3)
		FileshareCloseShowcaseManager(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		return true
	end

	local function __FUNC_1A5E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_196B_, __FUNC_1A5E_, false)
	registerVal6.id = "FileshareSelectorList0"
	registerVal14.id = "FileshareCategoryQuotas0"
	registerVal17:setModel(registerVal1.buttonModel, arg0)
	local registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.FileshareSelectorList0:processEvent(registerVal20)
	end
	local function __FUNC_1B59_(arg1)
		arg1.FileshareSelectorList0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.TitleDotsWidget0:close()
		arg1.tabList:close()
		arg1.FileshareCategoryQuotas0:close()
		arg1.MenuFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Fileshare_ShowcaseManager.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1B59_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Fileshare_ShowcaseManager = __FUNC_438_
