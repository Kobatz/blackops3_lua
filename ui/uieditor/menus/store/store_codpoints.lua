-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_lines")
require("ui.uieditor.widgets.StartMenu.StartMenu_CurrencyCounts")
require("ui.uieditor.widgets.Store.Store_NonFeaturedFrame")
local function __FUNC_346_(arg0, arg1)
	CoD.StoreUtility.InitSingleCategoryStoreMenu(arg0, arg1, "CODPOINTS")
end

local function __FUNC_3F7_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Store_CodPoints")
	if __FUNC_346_ then
		__FUNC_346_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Store_CodPoints.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -638.000000, 642.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setScale(1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.750000)
	registerVal1:addElement(registerVal4)
	registerVal1.editorBackground = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_STORE_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_STORE_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.frame = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal6:setTopBottom(true, false, 70.000000, 687.250000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	local registerVal7 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 871.000000, 1216.000000)
	registerVal7:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_12A3_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_12A3_)
	local function __FUNC_12F2_(arg1)
		registerVal7.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_12F2_)
	registerVal1:addElement(registerVal7)
	registerVal1.SelfIdentityBadge = registerVal7
	local registerVal8 = CoD.MissionRecordVault_lines.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 58.000000, 1290.140000)
	registerVal8:setTopBottom(true, false, 114.560000, 118.560000)
	registerVal8:setAlpha(0.350000)
	registerVal1:addElement(registerVal8)
	registerVal1.MissionRecordVaultlines02 = registerVal8
	local registerVal9 = CoD.MissionRecordVault_lines.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 58.000000, 1290.140000)
	registerVal9:setTopBottom(true, false, 640.560000, 644.560000)
	registerVal9:setAlpha(0.350000)
	registerVal1:addElement(registerVal9)
	registerVal1.MissionRecordVaultlines020 = registerVal9
	local registerVal10 = CoD.StartMenu_CurrencyCounts.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -612.000000, -408.000000)
	registerVal10:setTopBottom(true, false, 25.000000, 55.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.StartMenuCurrencyCounts = registerVal10
	local registerVal11 = CoD.Store_NonFeaturedFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 316.000000, 1216.000000)
	registerVal11:setTopBottom(true, false, 106.560000, 636.560000)
	registerVal1:addElement(registerVal11)
	registerVal1.StoreNonFeaturedFrame = registerVal11
	local function __FUNC_1390_(arg1, arg2)
		ShowPsStoreIcon(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1390_)
	local function __FUNC_1422_(arg0, arg1, arg2, arg3)
		RecordStoreLastFocusedItemViewed(registerVal1, arg0, arg2, arg1)
		SetProperty(registerVal1, "closing", true)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_1519_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1422_, __FUNC_1519_, false)
	local function __FUNC_1613_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPC()
		if not registerVal4 then
			RedeemCode(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_168A_(arg0, arg1, arg2)
		local registerVal3 = IsPC()
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_STORE_REDEEM_CODE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_1613_, __FUNC_168A_, false)
	local function __FUNC_17B8_(arg1)
		HidePsStoreIcon(arg0)
		SetControllerModelValue(arg0, "StoreRoot.isCategoryListInFocus", 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_17B8_)
	local function __FUNC_186C_(arg1)
		local registerVal2 = IsParamModelEqualTo(arg1, 1.000000)
		registerVal2 = PropertyIsTrue(registerVal1, "closing")
		if registerVal2 and not registerVal2 then
			MakeElementFocusable(registerVal1, "StoreNonFeaturedFrame", arg0)
			SetFocusToElement(registerVal1, "StoreNonFeaturedFrame", arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "PerController", "StoreRoot.ready", __FUNC_186C_)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal11.id = "StoreNonFeaturedFrame"
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.StoreNonFeaturedFrame:processEvent(registerVal14)
	end
	local function __FUNC_1997_(arg1)
		arg1.frame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.SelfIdentityBadge:close()
		arg1.MissionRecordVaultlines02:close()
		arg1.MissionRecordVaultlines020:close()
		arg1.StartMenuCurrencyCounts:close()
		arg1.StoreNonFeaturedFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Store_CodPoints.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1997_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Store_CodPoints = __FUNC_3F7_
