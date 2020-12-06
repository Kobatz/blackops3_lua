-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.menus.Craft.WeaponBuildKits.WeaponBuildKits")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsCategoryButton")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_319_(arg0, arg1)
	for index3=1.000000, #, 1.000000 do
		local registerVal10 = {}
		registerVal10.categoryRef = CoD.Craft.WeaponGroupNames[index3].weapon_category
		local registerVal8 = arg0.categoryList:findItem(registerVal10, nil, false, nil)
		registerVal10 = registerVal8:getModel()
		local registerVal9 = Engine.GetModel(registerVal10, "breadcrumbCount")
		if registerVal8 and registerVal9 then
			Engine.SetModelValue(registerVal9, CoD.CraftUtility.Gunsmith.GetBreadcrumbCountForWeaponGroup(arg1, CoD.Craft.WeaponGroupNames[index3].weapon_category))
		end
	end
end

local function __FUNC_57F_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WeaponBuildKitsCategorySelect")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WeaponBuildKitsCategorySelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_14EC_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_14EC_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.Smoke = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame0 = registerVal5
	registerVal6 = LUI.UIList.new(registerVal1, arg0, 15.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 117.000000, 1161.000000)
	registerVal6:setTopBottom(true, false, 169.000000, 596.000000)
	registerVal6:setDataSource("WeaponBuildKitCategories")
	registerVal6:setWidgetType(CoD.WeaponBuildKitsCategoryButton)
	registerVal6:setHorizontalCount(3.000000)
	registerVal6:setVerticalCount(2.000000)
	registerVal6:setSpacing(15.000000)
	local function __FUNC_1536_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_1536_)
	local function __FUNC_16C7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_16C7_)
	local function __FUNC_1796_(arg0, arg1, arg2, arg3)
		SelectWeaponBuildKitCategory(arg0, arg2)
		NavigateToMenu(registerVal1, "WeaponBuildKits", true, arg2)
		return true
	end

	local function __FUNC_1847_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1796_, __FUNC_1847_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.categoryList = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -523.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -229.000000, -207.000000)
	registerVal7:setText(Engine.Localize("ZMUI_CUSTOMIZE_FOR_WALL_BUYS_AND_MYSTERY_BOXES"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setLineSpacing(0.500000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.highlightedDescription = registerVal7
	local registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics = registerVal8
	local function __FUNC_1942_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "GenericMenuFrame0"
		registerVal5.clipName = "DefaultClip"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		SetPerControllerTableProperty(arg0, "editingWeaponBuildKits", true)
		SetHeadingKickerText("MENU_ZOMBIES")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1942_)
	local function __FUNC_1BC4_(arg0, arg1)
		local registerVal3 = IsLAN()
		if not registerVal3 then
			SetHeadingKickerText("MENU_ZOMBIES")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_1BC4_)
	local function __FUNC_1C90_(arg0, arg1, arg2, arg3)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		Gunsmith_Back(registerVal1, arg0, arg2)
		SetPerControllerTableProperty(arg2, "editingWeaponBuildKits", nil)
		SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
		ForceLobbyButtonUpdate(arg2)
		return true
	end

	local function __FUNC_1E2F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1C90_, __FUNC_1E2F_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "categoryList"
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.categoryList:processEvent(registerVal11)
	end
	local function __FUNC_1F27_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.GenericMenuFrame0:close()
		arg1.categoryList:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WeaponBuildKitsCategorySelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1F27_)
	if __FUNC_319_ then
		__FUNC_319_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WeaponBuildKitsCategorySelect = __FUNC_57F_
