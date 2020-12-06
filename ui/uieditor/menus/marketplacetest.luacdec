-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.MarketplaceButton")
require("ui.uieditor.widgets.MenuSpecificWidgets.PlayerInventoryButton")
require("ui.uieditor.widgets.MenuSpecificWidgets.PlayerBalanceWidget")
local function __FUNC_376_(arg0)
	local registerVal2 = Engine.GetPlayerBalanceItems(arg0)
	local registerVal3, registerVal4, registerVal5 = pairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.balanceId = value7.id
		registerVal11.balanceAmount = value7.value
		registerVal10.models = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("PlayerBalance", __FUNC_376_, true)
DataSources.PlayerBalance = registerVal1
local function __FUNC_4CE_(arg0)
	local registerVal2 = Engine.GetMarketplaceItems()
	local registerVal3, registerVal4, registerVal5 = pairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.rentalDuration == 0.000000 then
		else
			if value7.rentalDurationUnit == 0.000000 then
			else
				if value7.rentalDurationUnit == 1.000000 then
				else
					if value7.rentalDurationUnit == 2.000000 then
					else
						if value7.rentalDurationUnit == 3.000000 then
						else
							if value7.rentalDurationUnit == 4.000000 then
							else
								if value7.rentalDurationUnit == 5.000000 then
								else
									if value7.rentalDurationUnit == 6.000000 then
									end
								end
							end
						end
					end
				end
			end
		end
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.itemIndex = index6
		registerVal13.skuId = value7.skuId
		registerVal13.productName = value7.name
		registerVal13.skuPrice = value7.skuPrice
		registerVal13.currencyId = value7.currencyId
		registerVal13.productId = value7.productId
		registerVal13.rentalDuration = "Infinite"
		registerVal13.rentalDurationUnit = "weeks"
		registerVal12.models = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("MarketplaceItem", __FUNC_4CE_, true)
DataSources.MarketplaceItem = registerVal1
local function __FUNC_85A_(arg0)
	local registerVal2 = Engine.GetPlayerInventoryItems(arg0)
	local registerVal3, registerVal4, registerVal5 = pairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.isConsumable then
		else
		end
		if value7.expiryDuration ~= nil and value7.expiryDuration < 0.000000 then
		end
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.itemIndex = index6
		registerVal13.itemId = value7.itemId
		registerVal13.productName = value7.name
		registerVal13.itemQuantity = value7.quantity
		registerVal13.itemXp = value7.xp
		registerVal13.isConsumable = "No"
		registerVal13.expiryDuration = "N/A"
		registerVal12.models = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PlayerInventoryItem", __FUNC_85A_, true)
DataSources.PlayerInventoryItem = registerVal1
function LUI.createMenu.MarketplaceTest(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MarketplaceTest")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MarketplaceTest.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setImage(RegisterImage("uie_t7_campaign_bg_inf_01_c"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 167.000000, 517.000000)
	registerVal4:setTopBottom(true, false, 262.000000, 668.000000)
	registerVal4:setWidgetType(CoD.MarketplaceButton)
	registerVal4:setVerticalCount(4.000000)
	registerVal4:setDataSource("MarketplaceItem")
	local function __FUNC_1A39_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1A39_)
	local function __FUNC_1BCB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1BCB_)
	local function __FUNC_1C9A_(arg0, arg1, arg2, arg3)
		PurchaseDWSKU(registerVal1, arg0, arg2)
		UpdateElementDataSource(registerVal1, "MarketplaceList")
		UpdateElementDataSource(registerVal1, "PlayerInventoryList")
		return true
	end

	local function __FUNC_1D6E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1C9A_, __FUNC_1D6E_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.MarketplaceList = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 167.000000, 367.000000)
	registerVal5:setTopBottom(true, false, 212.000000, 262.000000)
	registerVal5:setText(Engine.Localize("Marketplace"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal5)
	registerVal1.MarketplaceLabel = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 759.000000, 959.000000)
	registerVal6:setTopBottom(true, false, 212.000000, 262.000000)
	registerVal6:setText(Engine.Localize("Player Inventory"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal6)
	registerVal1.PlayerInventory = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 759.000000, 1109.000000)
	registerVal7:setTopBottom(true, false, 262.000000, 668.000000)
	registerVal7:setWidgetType(CoD.PlayerInventoryButton)
	registerVal7:setVerticalCount(4.000000)
	registerVal7:setDataSource("PlayerInventoryItem")
	local function __FUNC_1E6A_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_1E6A_)
	local function __FUNC_1FFE_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1FFE_)
	local function __FUNC_20CE_(arg0, arg1, arg2, arg3)
		RemoveFromPlayerInventory(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2137_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "Consume Item")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_20CE_, __FUNC_2137_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.PlayerInventoryList = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 294.000000, 494.000000)
	registerVal8:setTopBottom(true, false, 64.000000, 112.000000)
	registerVal8:setText(Engine.Localize("Player Balances"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.PlayerBalancesLabel = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 294.000000, 898.000000)
	registerVal9:setTopBottom(true, false, 112.000000, 212.000000)
	registerVal9:setWidgetType(CoD.PlayerBalanceWidget)
	registerVal9:setHorizontalCount(3.000000)
	registerVal9:setDataSource("PlayerBalance")
	registerVal1:addElement(registerVal9)
	registerVal1.PlayerBalancesList = registerVal9
	local registerVal10 = {}
	registerVal10.up = registerVal9
	registerVal10.right = registerVal7
	registerVal4.navigation = registerVal10
	registerVal10 = {}
	registerVal10.left = registerVal4
	registerVal10.up = registerVal9
	registerVal7.navigation = registerVal10
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11 = {registerVal4, registerVal7}
	registerVal10.down = registerVal11
	registerVal9.navigation = registerVal10
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2236_(arg0, arg1)
		UpdateElementDataSource(registerVal1, "MarketplaceList")
		UpdateElementDataSource(registerVal1, "PlayerInventoryList")
		UpdateElementDataSource(registerVal1, "PlayerBalancesList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("refresh_dw_inventory_menu", __FUNC_2236_)
	local function __FUNC_2344_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2398_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "Back Out")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2344_, __FUNC_2398_, false)
	local function __FUNC_2494_(arg0, arg1, arg2, arg3)
		ReportItemUsageTime(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_24F9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "Update Usage Time")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_2494_, __FUNC_24F9_, false)
	registerVal4.id = "MarketplaceList"
	registerVal7.id = "PlayerInventoryList"
	registerVal9.id = "PlayerBalancesList"
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.MarketplaceList:processEvent(registerVal12)
	end
	local function __FUNC_25F3_(arg1)
		arg1.MarketplaceList:close()
		arg1.PlayerInventoryList:close()
		arg1.PlayerBalancesList:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MarketplaceTest.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_25F3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

