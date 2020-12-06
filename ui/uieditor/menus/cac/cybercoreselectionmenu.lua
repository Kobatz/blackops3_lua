-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.BackgroundFrames.CACBackgroundNoHero")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreSelectionMulticoreWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreListItemWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreSelectionInfoWidget")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
local registerVal1 = {}
local function __FUNC_488_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "CybercoreSelectionMenu")
	local registerVal3 = Engine.CreateModel(registerVal1, "multicoreUnlockLevel")
	Engine.SetModelValue(registerVal3, CoD.CACUtility.MulticoreUnlockLevel)
	return registerVal1
end

registerVal1.getModel = __FUNC_488_
DataSources.CybercoreSelectionMenu = registerVal1
local function __FUNC_60C_(arg0)
	local registerVal2 = Engine.GetEquippedCybercore(arg0)
	local registerVal3 = CoD.GetUnlockablesByGroupName("cybercom_core")
	local function __FUNC_D0C_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = arg1:getModel(arg2, "itemIndex")
		if registerVal5 then
			local registerVal6 = Engine.GetModelValue(registerVal5)
			local registerVal8 = Engine.GetModelForController(arg2)
			local registerVal7 = Engine.GetModel(registerVal8, "hudItems.cybercomRequestedType")
			registerVal8 = arg1:getModel(arg2, "gscIndex")
			if registerVal7 and registerVal8 then
				local registerVal9 = Engine.GetModelValue(registerVal8)
				Engine.SetModelValue(registerVal7, registerVal9)
				Engine.EquipCybercore(arg2, registerVal6)
			end
			registerVal8 = GoBack(arg0, arg2)
			ClearMenuSavedState(arg4)
			if registerVal8 then
				local registerVal11 = {}
				registerVal11.name = "update_state"
				registerVal11.controller = arg2
				registerVal8:processEvent(registerVal11)
			end
			SaveLoadout(arg0, arg2)
		end
	end

	local registerVal6 = table.getn(registerVal3)
	for index5=1.000000, registerVal6, 1.000000 do
		local registerVal10 = Engine.GetItemName(registerVal3[index5])
		local registerVal11 = Engine.GetItemImage(registerVal3[index5])
		local registerVal12 = Engine.GetItemDesc(registerVal3[index5])
		local registerVal13 = Engine.GetItemRef(registerVal3[index5])
		{}.name = registerVal10
		{}.icon = registerVal11
		{}.desc = registerVal12
		{}.ref = registerVal13
		{}.itemIndex = registerVal3[index5]
		{}.gscIndex = 0.000000
		local registerVal15, registerVal16, registerVal17 = ipairs(CoD.CACUtility.CybercoreGroupNames)
		for index18,value19 in registerVal15, registerVal16, registerVal17 do
			if value19.itemRef == registerVal13 then
				{}.gscIndex = value19.index
			else
			end
		end
		for index18=1.000000, CoD.CACUtility.maxAbilities, 1.000000 do
			local registerVal22 = Engine.GetTacticalMenuItems(arg0, (index18 - 1.000000), (index5 - 1.000000))
			if registerVal22.contextual then
			else
			end
			local registerVal25 = Engine.GetItemIndexFromReference(registerVal22.name)
			local registerVal26 = Engine.IsItemPurchased(arg0, registerVal25)
			{}.name = registerVal22.name
			{}.displayName = registerVal22.displayName
			{}.image = registerVal22.image
			{}.enabled = registerVal26
			{}[("AbilityWheelWeapon" .. CoD.CACUtility.abilityButtonNumMapping[(0.000000 + 1.000000)])] = {}
		end
		for index18=((0.000000 + 1.000000) + 1.000000), CoD.CACUtility.maxAbilityWheelItems, 1.000000 do
			{}.name = nil
			{}.displayName = ""
			{}.image = nil
			{}.enabled = false
			{}[("AbilityWheelWeapon" .. CoD.CACUtility.abilityButtonNumMapping[index18])] = {}
		end
		for index18=((0.000000 + 1.000000) + 1.000000), CoD.CACUtility.maxContextualAbilityItems, 1.000000 do
			{}.name = nil
			{}.displayName = ""
			{}.image = nil
			{}.enabled = false
			{}[("AbilityWheelContextualWeapon" .. CoD.CACUtility.abilityButtonNumMapping[index18])] = {}
		end
		local registerVal20 = {}
		registerVal20.models = {}
		local registerVal21 = {}
		if registerVal3[index5] ~= registerVal2 then
		end
		registerVal21.selectIndex = true
		registerVal21.action = __FUNC_D0C_
		registerVal20.properties = registerVal21
		table.insert({}, registerVal20)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("CybercoreList", __FUNC_60C_, true)
DataSources.CybercoreList = registerVal1
function LUI.createMenu.CybercoreSelectionMenu(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CybercoreSelectionMenu")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CybercoreSelectionMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -18.000000, -18.000000)
	registerVal3:setScale(1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.blackImage = registerVal4
	local registerVal5 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.CybercoreVignetteContainer = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -597.000000, -251.000000)
	registerVal6:setTopBottom(true, true, 81.500000, -44.500000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.650000)
	registerVal1:addElement(registerVal6)
	registerVal1.Backing = registerVal6
	local registerVal7 = CoD.CACBackgroundNoHero.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, -6.000000, -6.000000)
	registerVal7:setTopBottom(true, true, 4.000000, 4.000000)
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_LOADOUTS_CAPS"))
	registerVal1:addElement(registerVal7)
	registerVal1.CACBackgroundNoHero0 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, false, -576.000000, -283.000000)
	registerVal8:setTopBottom(true, false, 109.000000, 134.000000)
	registerVal8:setText(Engine.Localize(LocalizeToUpperString("MENU_CYBERNETICS_CORE")))
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.listHeader = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -576.000000, -266.000000)
	registerVal9:setTopBottom(true, false, 143.500000, 635.000000)
	registerVal9:setRGB(0.430000, 0.430000, 0.430000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.listBgImage = registerVal9
	local registerVal10 = CoD.CybercoreSelectionMulticoreWidget.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -576.000000, -283.000000)
	registerVal10:setTopBottom(true, false, 505.000000, 645.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.CybercoreSelectionMulticoreWidget0 = registerVal10
	local registerVal11 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(false, false, -576.000000, -266.000000)
	registerVal11:setTopBottom(true, false, 134.000000, 480.000000)
	registerVal11:setDataSource("CybercoreList")
	registerVal11:setWidgetType(CoD.CybercoreListItemWidget)
	registerVal11:setVerticalCount(3.000000)
	local function __FUNC_2616_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_2616_)
	local function __FUNC_27A7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_27A7_)
	local function __FUNC_2876_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_28D7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2876_, __FUNC_28D7_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.coreList = registerVal11
	local registerVal12 = CoD.CybercoreSelectionInfoWidget.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -223.500000, 640.000000)
	registerVal12:setTopBottom(true, false, 89.500000, 675.500000)
	registerVal1:addElement(registerVal12)
	registerVal1.CybercoreSelectionInfoWidget0 = registerVal12
	local registerVal13 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, true, -65.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.feFooterContainerNOTLobby0 = registerVal13
	local registerVal14 = CoD.cac_ButtonBoxLrgInactiveStroke.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -576.000000, -271.000000)
	registerVal14:setTopBottom(true, false, 490.000000, 653.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.cacButtonBoxLrgInactiveStroke0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -12.000000, 12.000000)
	registerVal15:setTopBottom(true, false, 79.500000, 89.000000)
	registerVal15:setRGB(0.900000, 0.900000, 0.900000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal15)
	registerVal1.CategoryListLine = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -584.100000, -581.100000)
	registerVal16:setTopBottom(true, true, 86.500000, -44.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.LineSide = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -604.130000, -568.130000)
	registerVal17:setTopBottom(true, false, 134.000000, 138.000000)
	registerVal17:setYRot(-180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.Pixel20010 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -604.130000, -568.130000)
	registerVal18:setTopBottom(true, false, 476.000000, 480.000000)
	registerVal18:setYRot(-180.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal18)
	registerVal1.Pixel200100 = registerVal18
	local registerVal19 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_29D2_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal19:registerEventHandler("menu_loaded", __FUNC_29D2_)
	registerVal1:addElement(registerVal19)
	registerVal1.feFooterContainer = registerVal19
	local function __FUNC_2A65_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal11, nil, false, __FUNC_2A65_)
	local function __FUNC_2AB6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_2B31_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2AB6_, __FUNC_2B31_, false)
	registerVal11.id = "coreList"
	registerVal13:setModel(registerVal1.buttonModel, arg0)
	registerVal19:setModel(registerVal1.buttonModel, arg0)
	local registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	local registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.coreList:processEvent(registerVal22)
	end
	local function __FUNC_2C2D_(arg1)
		arg1.CybercoreVignetteContainer:close()
		arg1.CACBackgroundNoHero0:close()
		arg1.CybercoreSelectionMulticoreWidget0:close()
		arg1.coreList:close()
		arg1.CybercoreSelectionInfoWidget0:close()
		arg1.feFooterContainerNOTLobby0:close()
		arg1.cacButtonBoxLrgInactiveStroke0:close()
		arg1.feFooterContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CybercoreSelectionMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2C2D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

