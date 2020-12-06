-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACBackgroundNew")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Texture")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreUpgradeTreeWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreInfoModelWidget")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local registerVal1 = {}
local function __FUNC_4EC_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "CybercoreUpgradeMenu")
	registerVal2 = Engine.GetModel(registerVal1, "selectedCore")
	if registerVal2 == nil then
		local registerVal4 = Engine.CreateModel(registerVal1, "selectedCore")
		Engine.SetModelValue(registerVal4, "cybercore_control")
	end
	local registerVal3 = Engine.GetModelValue(registerVal4)
	local registerVal5, registerVal6, registerVal7 = ipairs(CoD.CACUtility.CybercoreGroupNames)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.itemRef == registerVal3 then
		else
		end
	end
	registerVal6 = Engine.CreateModel(registerVal1, "currentCybercoreName")
	Engine.SetModelValue(registerVal6, value9.name)
	return registerVal1
end

registerVal1.getModel = __FUNC_4EC_
DataSources.CybercoreUpgradeMenu = registerVal1
local function __FUNC_7BD_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderl
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	local registerVal2, registerVal3, registerVal4 = ipairs(CoD.CACUtility.CybercoreGroupNames)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal9 = {}
		local registerVal10 = {}
		registerVal10.tabName = value6.name
		registerVal9.models = registerVal10
		registerVal10 = {}
		registerVal10.itemName = value6.name
		registerVal10.itemRef = value6.itemRef
		registerVal9.properties = registerVal10
		table.insert({}, registerVal9)
	end
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderr
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("CybercoreGroups", __FUNC_7BD_, true)
DataSources.CybercoreGroups = registerVal1
local function __FUNC_A58_(arg0, arg1)
	arg0.disableBlur = true
end

local function __FUNC_A9F_(arg0, arg1)
	arg0.upgradeTree:updateTree(arg1)
	CoD.CACUtility.CreateUnlockTokenModels(arg1)
end

LUI.hudMenuType.CybercoreUpgrade = "hud"
local function __FUNC_B6F_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CybercoreUpgrade")
	if __FUNC_A58_ then
		__FUNC_A58_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CybercoreUpgrade.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACBackgroundNew.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_cybercore"))
	local function __FUNC_246E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(LocalizeIntoString("CPUI_CORE_UPGRADES_CAPS", LocalizeToUpperString(registerVal1))))
		end
	end

	registerVal3:subscribeToGlobalModel(arg0, "CybercoreUpgradeMenu", "currentCybercoreName", __FUNC_246E_)
	local function __FUNC_2645_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_2645_)
	registerVal1:addElement(registerVal3)
	registerVal1.CACBackgroundNew0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 62.870000, 518.000000)
	registerVal4:setTopBottom(true, true, 125.000000, -36.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackPanel = registerVal4
	local registerVal5 = CoD.AbilityWheel_Texture.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 62.870000, 518.000000)
	registerVal5:setTopBottom(true, false, 139.000000, 660.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Texture = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 85.000000, 125.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TabbarBacking = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -640.000000, -109.000000)
	registerVal7:setTopBottom(false, false, -235.000000, -231.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.Line5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -640.000000, -109.000000)
	registerVal8:setTopBottom(false, false, 162.000000, 166.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Line4 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -640.000000, -109.000000)
	registerVal9:setTopBottom(false, false, 21.000000, 24.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Line40 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -648.000000, -109.000000)
	registerVal10:setTopBottom(false, false, 298.000000, 302.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Line3 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 563.000000, -85.000000)
	registerVal11:setTopBottom(false, false, 239.000000, 242.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Line2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 563.000000, -85.000000)
	registerVal12:setTopBottom(false, false, 191.000000, 200.780000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Line1 = registerVal12
	local registerVal13 = CoD.CybercoreUpgradeTreeWidget.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, -51.000000, 649.000000)
	registerVal13:setTopBottom(true, false, 19.000000, 683.500000)
	local function __FUNC_26DE_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:subscribeToGlobalModel(arg0, "CybercoreAbilityUpgradeTree", nil, __FUNC_26DE_)
	local function __FUNC_272E_(arg1, arg2)
		if arg1.RecordCurrFocusedElemID then
			local registerVal3 = arg1.RecordCurrFocusedElemID(arg1, arg2)
		else
			if arg1.super.RecordCurrFocusedElemID then
				registerVal3 = arg1.super.RecordCurrFocusedElemID(arg1, arg2)
			end
		end
		UpdateElementModelToFocusedElementModel(registerVal1, arg1, "infoWidget", arg2)
		UpdateElementState(registerVal1, "infoWidget", arg0)
		return registerVal3
	end

	registerVal13:registerEventHandler("record_curr_focused_elem_id", __FUNC_272E_)
	registerVal1:addElement(registerVal13)
	registerVal1.upgradeTree = registerVal13
	local registerVal14 = CoD.CybercoreInfoModelWidget.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, true, 563.000000, -76.000000)
	registerVal14:setTopBottom(true, false, 120.000000, 706.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.infoWidget = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal15:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal15:setRGB(0.900000, 0.900000, 0.900000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal15)
	registerVal1.CategoryListLine = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -613.130000, -577.130000)
	registerVal16:setTopBottom(true, false, 186.000000, 190.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setYRot(-180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.Pixel2 = registerVal16
	local registerVal17 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_2899_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("menu_loaded", __FUNC_2899_)
	registerVal1:addElement(registerVal17)
	registerVal1.feFooterContainer = registerVal17
	local registerVal18 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, true, 0.000000, 2000.000000)
	registerVal18:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal18.Tabs.grid:setDataSource("CybercoreGroups")
	local function __FUNC_292D_(arg1, arg2)
		Cybercore_TabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal18:registerEventHandler("list_active_changed", __FUNC_292D_)
	registerVal1:addElement(registerVal18)
	registerVal1.coreTabList = registerVal18
	local registerVal19 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal19:setTopBottom(true, true, 95.000000, -7.750000)
	registerVal1:addElement(registerVal19)
	registerVal1.FEMenuLeftGraphics = registerVal19
	local registerVal20 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal20:setLeftRight(false, true, -58.000000, -6.000000)
	registerVal20:setTopBottom(true, true, 95.000000, -7.750000)
	registerVal20:setYRot(180.000000)
	registerVal1:addElement(registerVal20)
	registerVal1.FEMenuLeftGraphics0 = registerVal20
	local registerVal21 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal21:setLeftRight(false, false, 0.000000, 379.000000)
	registerVal21:setTopBottom(true, true, 272.000000, -164.110000)
	registerVal1:addElement(registerVal21)
	registerVal1.XCamMouseControl = registerVal21
	local registerVal22 = {}
	registerVal22.right = registerVal14
	registerVal22.down = registerVal14
	registerVal13.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal13
	registerVal22.up = registerVal13
	registerVal14.navigation = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Control"
	local function __FUNC_2992_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "CybercoreUpgradeMenu.selectedCore", "cybercore_control")
	end

	registerVal25.condition = __FUNC_2992_
	local registerVal26 = {}
	registerVal26.stateName = "Martial"
	local function __FUNC_2A37_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "CybercoreUpgradeMenu.selectedCore", "cybercore_martial")
	end

	registerVal26.condition = __FUNC_2A37_
	local registerVal27 = {}
	registerVal27.stateName = "Chaos"
	local function __FUNC_2ADB_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "CybercoreUpgradeMenu.selectedCore", "cybercore_chaos")
	end

	registerVal27.condition = __FUNC_2ADB_
	registerVal24 = {registerVal25, registerVal26, registerVal27}
	registerVal1:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetModelForController(arg0)
	registerVal24 = Engine.GetModel(registerVal25, "CybercoreUpgradeMenu.selectedCore")
	local function __FUNC_2B7D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CybercoreUpgradeMenu.selectedCore"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal24, __FUNC_2B7D_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2CB3_(arg1, arg2)
		local registerVal3 = TestAndSetFirstTimeMenu(arg0, "com_firsttime_cybertech")
		if registerVal3 then
			OpenGenericLargePopup(registerVal1, arg0, "MENU_FIRSTTIME_CYBERTECH", "MENU_FIRSTTIME_CYBERTECH2", "com_firsttime_cybertech_image", "MENU_FIRSTTIME_CYBERTECH_BUTTONTEXT", "", "")
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_2CB3_)
	local function __FUNC_2E61_(arg1, arg2)
		PrepareOpenMenuInSafehouse(arg0)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SetPerControllerTableProperty(arg0, "isInCybercoreUpgrade", true)
		ShowHeaderIconOnly(registerVal1)
		SetElementStateByElementName(registerVal1, "CACBackgroundNew0", arg0, "Update")
		PlayClip(registerVal1, "intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2E61_)
	local function __FUNC_305A_(arg0, arg1, arg2, arg3)
		UploadStats(registerVal1, arg2)
		PrepareCloseMenuInSafehouse(arg2)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		SetPerControllerTableProperty(arg2, "isInCybercoreUpgrade", nil)
		SendOwnMenuResponse(arg1, arg2, "closed")
		PlaySoundSetSound(registerVal1, "menu_go_back")
		ClearMenuSavedState(arg1)
		Close(registerVal1, arg2)
		SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
		return true
	end

	local function __FUNC_32AE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_305A_, __FUNC_32AE_, false)
	local function __FUNC_33A9_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_3415_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_33A9_, __FUNC_3415_, false)
	registerVal13.id = "upgradeTree"
	registerVal14.id = "infoWidget"
	registerVal17:setModel(registerVal1.buttonModel, arg0)
	registerVal24 = {}
	registerVal24.name = "menu_loaded"
	registerVal24.controller = arg0
	registerVal1:processEvent(registerVal24)
	registerVal24 = {}
	registerVal24.name = "update_state"
	registerVal24.menu = registerVal1
	registerVal1:processEvent(registerVal24)
	registerVal22 = registerVal1:restoreState()
	if not registerVal22 then
		registerVal24 = {}
		registerVal24.name = "gain_focus"
		registerVal24.controller = arg0
		registerVal1.upgradeTree:processEvent(registerVal24)
	end
	local function __FUNC_3567_(arg1)
		arg1.CACBackgroundNew0:close()
		arg1.Texture:close()
		arg1.upgradeTree:close()
		arg1.infoWidget:close()
		arg1.feFooterContainer:close()
		arg1.coreTabList:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CybercoreUpgrade.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3567_)
	if __FUNC_A9F_ then
		__FUNC_A9F_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CybercoreUpgrade = __FUNC_B6F_
