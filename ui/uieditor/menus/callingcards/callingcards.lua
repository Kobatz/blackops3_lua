-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_340_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "StoreRoot")
	Engine.CreateModel(registerVal3, "InventoryItemPurchaseSuccessful")
end

local function __FUNC_43C_(arg0, arg1)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_50A_(arg0, arg2)
		ForceNotifyControllerModel(arg1, "StoreRoot.InventoryItemPurchaseSuccessful")
		if not arg2.occluded and arg2.occludedBy and arg2.occludedBy.id == "Menu.PurchaseInventoryItemComplete" and arg0.Tabs and arg0.Tabs.Tabs and arg0.Tabs.Tabs.grid then
			arg0.Tabs.Tabs.grid:updateDataSource()
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_50A_)
end

local function __FUNC_73C_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CallingCards")
	if __FUNC_340_ then
		__FUNC_340_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CallingCards.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1A5D_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1A5D_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.650000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, -11.000000, 5.000000)
	registerVal5:setTopBottom(true, true, 115.910000, 13.910000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListPanel = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal7:setRGB(0.120000, 0.130000, 0.190000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.MenuTitleBackground = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 64.000000, 1280.000000)
	registerVal8:setTopBottom(true, false, 31.000000, 75.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("Menu"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.TitleText = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal9:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal9:setRGB(0.120000, 0.130000, 0.190000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ButtonBarBackground = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal10:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListLine = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.titleLabel:setText(Engine.Localize("MENU_CALLING_CARDS_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CALLING_CARDS_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal12:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1AA6_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1AA6_)
	local function __FUNC_1AF6_(arg1)
		registerVal12.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1AF6_)
	registerVal1:addElement(registerVal12)
	registerVal1.SelfIdentityBadge = registerVal12
	local registerVal13 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal13:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal13:setTopBottom(false, false, -223.000000, 297.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.TabFrame = registerVal13
	local registerVal14 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, true, 0.000000, 1218.000000)
	registerVal14:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal14.Tabs.grid:setHorizontalCount(8.000000)
	registerVal14.Tabs.grid:setDataSource("CallingCardsTabs")
	local function __FUNC_1B94_(arg1, arg2)
		CallingCards_UpdateListFromTabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal14:registerEventHandler("list_active_changed", __FUNC_1B94_)
	registerVal1:addElement(registerVal14)
	registerVal1.Tabs = registerVal14
	local registerVal15 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal15:setTopBottom(true, true, 91.000000, -11.750000)
	registerVal1:addElement(registerVal15)
	registerVal1.FEMenuLeftGraphics = registerVal15
	local function __FUNC_1C0B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:changeFrameWidget(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal14.Tabs.grid, "tabWidget", true, __FUNC_1C0B_)
	local function __FUNC_1CA6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SetPerControllerTableProperty(arg2, "currentCallingCardTabElement", nil)
		UploadStats(registerVal1, arg2)
		return true
	end

	local function __FUNC_1D7E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1CA6_, __FUNC_1D7E_, false)
	local function __FUNC_1E79_(arg1)
		CallingCards_GoBack(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1E79_)
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	registerVal13.id = "TabFrame"
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
		registerVal1.TabFrame:processEvent(registerVal18)
	end
	local function __FUNC_1ED1_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.Tabs:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CallingCards.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1ED1_)
	if __FUNC_43C_ then
		__FUNC_43C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CallingCards = __FUNC_73C_
