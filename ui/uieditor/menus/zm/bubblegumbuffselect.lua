-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumBuffGumShadow")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.BubbleGumBuffs.BubblegumBuffSelectFootnote")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumGridItemButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_TitleBox")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.WeaponGroupsTabWidget")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumBuffDescription")
require("ui.uieditor.widgets.ZM_LockBig")
local function __FUNC_5C6_(arg0, arg1)
	CoD.perController[arg1].weaponCategory = "bubblegum"
	DataSources.Unlockables.setCurrentFilterItem("bubblegum")
	local function __FUNC_6ED_(arg0)
		if not CoD.PrestigeUtility.isInPermanentUnlockMenu then
			local registerVal1 = Engine.GetEquippedBubbleGumPack(arg1)
			local registerVal3 = Engine.GetBubbleGumBuff(arg1, registerVal1, CoD.perController[arg1].bgbIndex)
			local registerVal4 = Engine.GetItemGroup(registerVal3)
			local registerVal8 = {}
			registerVal8.filter = registerVal4
			arg0.TabList.Tabs.grid:findItem(nil, registerVal8, true, nil)
			local registerVal7 = {}
			registerVal7.itemIndex = registerVal3
			arg0.selectionList:findItem(registerVal7, nil, true, nil)
		end
	end

	arg0.restoreState = __FUNC_6ED_
end

local function __FUNC_96B_(arg0, arg1)
	arg0.weaponCategoryList = arg0.TabList
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "UpdateOnStoreClose")
	local function __FUNC_AF8_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == 0.000000 then
			return 
		end
		local registerVal3 = CoD.GetUnlockablesTable(arg1, nil, Enum.eModes.MODE_ZOMBIES)
		CoD.UnlockablesTable = registerVal3
		arg0.selectionList:updateDataSource()
		arg0.TabList.Tabs.grid:updateDataSource()
		Engine.SetModelValue(arg2, 0.000000)
	end

	arg0:subscribeToModel(registerVal2, __FUNC_AF8_, false)
	local function __FUNC_D05_(arg0)
		Engine.UnsubscribeAndFreeModel(registerVal2)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_D05_)
end

local function __FUNC_D79_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BubblegumBuffSelect")
	if __FUNC_5C6_ then
		__FUNC_5C6_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BubblegumBuffSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.BubbleGumBuffGumShadow.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 819.500000, 1121.130000)
	registerVal3:setTopBottom(true, false, 241.410000, 544.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_297B_(arg1, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg1, arg2, arg0)
		if registerVal3 then
			registerVal3 = IsBGBItemLocked(arg1, arg2, arg0)
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_297B_
	local registerVal8 = {}
	registerVal8.stateName = "Locked"
	local function __FUNC_2A0B_(arg1, arg2, arg3)
		return IsBGBItemLocked(arg1, arg2, arg0)
	end

	registerVal8.condition = __FUNC_2A0B_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_2A65_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "itemIndex", true, __FUNC_2A65_)
	registerVal1:addElement(registerVal3)
	registerVal1.BubbleGumBuffGumShadow = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 658.000000)
	registerVal4:setTopBottom(true, false, 84.000000, 738.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel = registerVal4
	local registerVal5 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.scorestreakVignetteContainer = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -275.000000, -237.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.BannerTab = registerVal6
	registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_BUBBLEGUM_BUFFS_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_BUBBLEGUM_BUFFS_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_bubblebuffs"))
	registerVal1:addElement(registerVal7)
	registerVal1.GenericMenuFrame0 = registerVal7
	registerVal8 = CoD.BubblegumBuffSelectFootnote.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, 60.000000, 524.000000)
	registerVal8:setTopBottom(false, true, -170.000000, -74.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "RequiresDLC"
	local function __FUNC_2B83_(arg1, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg1, arg2, arg0)
		if registerVal3 then
			registerVal3 = IsBGBItemLocked(arg1, arg2, arg0)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_2B83_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_2C13_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_2C13_)
	registerVal1:addElement(registerVal8)
	registerVal1.BubblegumBuffSelectFootnote = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 77.000000, 645.000000)
	registerVal9:setTopBottom(true, false, 152.000000, 605.000000)
	registerVal9:setWidgetType(CoD.BubbleGumGridItemButton)
	registerVal9:setHorizontalCount(5.000000)
	registerVal9:setVerticalCount(4.000000)
	registerVal9:setSpacing(7.000000)
	registerVal9:setVerticalCounter(CoD.verticalCounter)
	registerVal9:setDataSource("Unlockables")
	local function __FUNC_2D2F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:linkToElementModel(registerVal9, "itemIndex", true, __FUNC_2D2F_)
	local registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2F50_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2F50_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_3185_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_3185_)
	local function __FUNC_33B1_(arg1, arg2)
		local registerVal3 = IsCACItemNew(arg1, arg0)
		registerVal3 = IsBGBItemLocked(registerVal1, arg1, arg0)
		if registerVal3 and not registerVal3 then
			SetCACWeaponAsOld(registerVal1, arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			ShowBubblegumBuffModel(registerVal1, arg1, arg0)
		else
			ShowBubblegumBuffModel(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_33B1_)
	local function __FUNC_34F6_(arg1, arg2)
		ShowBubblegumBuffModel(registerVal1, arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("used_permanent_unlock_token", __FUNC_34F6_)
	local function __FUNC_3595_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_3595_)
	local function __FUNC_378D_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_378D_)
	local function __FUNC_385E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInPermanentUnlockMenu(arg2)
		registerVal4 = IsBGBItemLocked(arg1, arg0, arg2)
		if not registerVal4 and not registerVal4 then
			EquipBubblegumBuff(registerVal1, arg0, arg2)
			ClearMenuSavedState(arg1)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			GoBack(registerVal1, arg2)
			return true
		else
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			registerVal4 = IsCACItemFromDLC(arg1, arg0, arg2)
			registerVal4 = IsBGBItemLocked(arg1, arg0, arg2)
			registerVal4 = IsLive()
			if not registerVal4 and registerVal4 and registerVal4 and registerVal4 then
				OpenPurchaseMapPackConfirmation(arg2, arg0, "BubbleGumDLCStore", arg1)
				return true
			else
				registerVal4 = IsInPermanentUnlockMenu(arg2)
				registerVal4 = IsPermanentlyUnlocked(arg0, arg2)
				registerVal4 = HavePermanentUnlockTokens(arg2)
				if registerVal4 and not registerVal4 and registerVal4 then
					OpenPermanentUnlockClassItemDialog(arg1, arg0, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_3B6D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsInPermanentUnlockMenu(arg2)
		registerVal3 = IsBGBItemLocked(arg1, arg0, arg2)
		if not registerVal3 and not registerVal3 then
			return true
		else
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			registerVal3 = IsCACItemFromDLC(arg1, arg0, arg2)
			registerVal3 = IsBGBItemLocked(arg1, arg0, arg2)
			registerVal3 = IsLive()
			if not registerVal3 and registerVal3 and registerVal3 and registerVal3 then
				return true
			else
				registerVal3 = IsInPermanentUnlockMenu(arg2)
				registerVal3 = IsPermanentlyUnlocked(arg0, arg2)
				registerVal3 = HavePermanentUnlockTokens(arg2)
				if registerVal3 and not registerVal3 and registerVal3 then
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_385E_, __FUNC_3B6D_, true)
	local function __FUNC_3DFC_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemFromDLC(arg1, arg0, arg2)
		registerVal4 = IsBGBItemLocked(arg1, arg0, arg2)
		registerVal4 = IsLive()
		if registerVal4 and registerVal4 and registerVal4 then
			OpenDLCStore(registerVal1, arg0, arg2, "BubbleGumDLCStore", arg1)
			return true
		end
	end

	local function __FUNC_3F08_(arg0, arg1, arg2)
		local registerVal3 = IsCACItemFromDLC(arg1, arg0, arg2)
		registerVal3 = IsBGBItemLocked(arg1, arg0, arg2)
		registerVal3 = IsLive()
		if registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_GO_TO_STORE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "N", __FUNC_3DFC_, __FUNC_3F08_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.selectionList = registerVal9
	local registerVal10 = CoD.scorestreaks_TitleBox.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 700.000000, 951.000000)
	registerVal10:setTopBottom(true, false, 152.000000, 187.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.scorestreaksTitleBox = registerVal10
	registerVal11 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 0.000000, 2496.000000)
	registerVal11:setTopBottom(true, false, 84.000000, 123.000000)
	registerVal11.Tabs.grid:setWidgetType(CoD.WeaponGroupsTabWidget)
	registerVal11.Tabs.grid:setDataSource("BubbleGumTabType")
	local function __FUNC_409F_(arg1, arg2)
		BubbleGumBuffSelectTabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal11:registerEventHandler("list_active_changed", __FUNC_409F_)
	registerVal1:addElement(registerVal11)
	registerVal1.TabList = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 51.000000, 53.000000)
	registerVal12:setTopBottom(true, false, 76.000000, 675.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.LineSide0 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 30.000000, 58.000000)
	registerVal13:setTopBottom(true, false, 607.000000, 611.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.LineDot = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 30.000000, 58.000000)
	registerVal14:setTopBottom(true, false, 147.000000, 151.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.LineDot0 = registerVal14
	local registerVal15 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, true, -470.500000, -64.000000)
	registerVal15:setTopBottom(true, true, 259.000000, -180.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.XCamMouseControl = registerVal15
	local registerVal16 = CoD.Prestige_PermanentUnlockTokensWidget.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, true, -362.000000, -81.000000)
	registerVal16:setTopBottom(true, false, 39.000000, 84.000000)
	registerVal16:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
	registerVal16.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal16)
	registerVal1.PermanentUnlockTokensWidget = registerVal16
	local registerVal17 = CoD.BubbleGumBuffDescription.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 700.000000, 1020.310000)
	registerVal17:setTopBottom(true, false, 196.550000, 215.550000)
	registerVal1:addElement(registerVal17)
	registerVal1.BubbleGumBuffDescription = registerVal17
	local registerVal18 = CoD.ZM_LockBig.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 917.310000, 1013.310000)
	registerVal18:setTopBottom(true, false, 126.630000, 654.380000)
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Visible"
	local function __FUNC_410B_(arg1, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg1, arg2, arg0)
		if registerVal3 then
			registerVal3 = IsBGBItemLocked(arg1, arg2, arg0)
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_410B_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	local function __FUNC_419B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:linkToElementModel(registerVal18, "itemIndex", true, __FUNC_419B_)
	registerVal1:addElement(registerVal18)
	registerVal1.ZMLockBig = registerVal18
	local function __FUNC_42B7_(arg1)
		registerVal3:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal9, nil, false, __FUNC_42B7_)
	local function __FUNC_4306_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal9, nil, false, __FUNC_4306_)
	local function __FUNC_4356_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal9, nil, false, __FUNC_4356_)
	local function __FUNC_43A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.ScorestreaksLabel:setText(Engine.Localize(GetItemNameFromIndexZM(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal9, "itemIndex", true, __FUNC_43A6_)
	local function __FUNC_44AD_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal9, nil, false, __FUNC_44AD_)
	local function __FUNC_44FE_(arg1)
		registerVal18:setModel(arg1, arg0)
	end

	registerVal18:linkToElementModel(registerVal9, nil, false, __FUNC_44FE_)
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_454E_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal20.DefaultClip = __FUNC_454E_
	registerVal19.DefaultState = registerVal20
	registerVal1.clipsPerState = registerVal19
	local function __FUNC_45AE_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SetGlobalModelValueTrue("inBubblegumBuffSelectMenu")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_45AE_)
	local function __FUNC_46A7_(arg1, arg2)
		local registerVal3 = IsInPermanentUnlockMenu(arg0)
		if registerVal3 then
			ShowHeaderKickerAndIcon(registerVal1)
			SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
			SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
			local registerVal5 = {}
			registerVal5.elementName = "GenericMenuFrame0"
			registerVal5.clipName = "intro"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			PlayClip(registerVal1, "into", arg0)
		else
			ShowHeaderIconOnly(registerVal1)
			SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
			registerVal5 = {}
			registerVal5.elementName = "GenericMenuFrame0"
			registerVal5.clipName = "intro"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			PlayClip(registerVal1, "into", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_46A7_)
	local function __FUNC_492F_(arg1, arg2)
		UpdateAllMenuButtonPrompts(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("used_permanent_unlock_token", __FUNC_492F_)
	local function __FUNC_49CD_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		return true
	end

	local function __FUNC_4AA4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_49CD_, __FUNC_4AA4_, true)
	local function __FUNC_4BA1_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_4C0D_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_4BA1_, __FUNC_4C0D_, false)
	local function __FUNC_4D5F_(arg0)
		SetGlobalModelValueFalse("inBubblegumBuffSelectMenu")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_4D5F_)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "selectionList"
	registerVal21 = {}
	registerVal21.name = "menu_loaded"
	registerVal21.controller = arg0
	registerVal1:processEvent(registerVal21)
	registerVal21 = {}
	registerVal21.name = "update_state"
	registerVal21.menu = registerVal1
	registerVal1:processEvent(registerVal21)
	registerVal19 = registerVal1:restoreState()
	if not registerVal19 then
		registerVal21 = {}
		registerVal21.name = "gain_focus"
		registerVal21.controller = arg0
		registerVal1.selectionList:processEvent(registerVal21)
	end
	local function __FUNC_4DD9_(arg1)
		arg1.BubbleGumBuffGumShadow:close()
		arg1.LeftPanel:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.GenericMenuFrame0:close()
		arg1.BubblegumBuffSelectFootnote:close()
		arg1.selectionList:close()
		arg1.scorestreaksTitleBox:close()
		arg1.TabList:close()
		arg1.XCamMouseControl:close()
		arg1.PermanentUnlockTokensWidget:close()
		arg1.BubbleGumBuffDescription:close()
		arg1.ZMLockBig:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BubblegumBuffSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4DD9_)
	if __FUNC_96B_ then
		__FUNC_96B_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BubblegumBuffSelect = __FUNC_D79_
