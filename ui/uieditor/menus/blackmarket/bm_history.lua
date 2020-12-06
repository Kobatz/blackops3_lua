-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BlackMarket.LootDecryptionWidget")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.BlackMarket.BM_LogoRecently")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BlackMarket.BM_HorizontalCounter")
local function __FUNC_3C4_(arg0)
	local function __FUNC_8C1_(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
		local registerVal9 = CoD.BlackMarketUtility.GetRarityIDForString(arg5)
		registerVal9, registerVal10 = CoD.BlackMarketUtility.GetItemLockedTextAndAvailability(arg0, arg2, arg3)
		if arg3 == "emblem" or arg3 == "calling_card" then
			local registerVal12 = Engine.Localize("MPUI_EQUIP_PROMPT")
		end
		if arg6 ~= nil then
			local registerVal15 = Engine.GetUTCOffset()
			if not registerVal15 then
			end
			local registerVal13 = os.date("*t", (arg6 + 0.000000))
			if 12.000000 < registerVal13.hour then
				local registerVal19 = string.format("%02d", registerVal13.min)
				local registerVal14 = Engine.Localize("MPUI_BM_HISTORY_DATETIME_PM", registerVal13.month, registerVal13.day, (registerVal13.hour - 12.000000), registerVal19, string.format("%02d", registerVal13.sec))
			else
				registerVal19 = string.format("%02d", registerVal13.min)
				registerVal14 = Engine.Localize("MPUI_BM_HISTORY_DATETIME_AM", registerVal13.month, registerVal13.day, registerVal13.hour, registerVal19, string.format("%02d", registerVal13.sec))
			end
		end
		if arg7 ~= nil and 1.000000 < arg7 then
			registerVal14 = Engine.Localize("MPUI_BM_DUPLICATE_TEXT", arg7)
		end
		registerVal14 = {}
		registerVal15 = {}
		registerVal15.displayText = arg1
		registerVal15.hintText = registerVal12
		registerVal15.dateTime = registerVal14
		registerVal15.duplicateText = registerVal14
		local registerVal16 = CoD.BlackMarketUtility.GetImageForLootItem(arg2, arg3)
		registerVal15.image = registerVal16
		registerVal15.emblem = arg2
		registerVal15.category = arg3
		registerVal16 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem(arg2, arg3)
		registerVal15.categoryName = registerVal16
		registerVal15.lockItemText = registerVal9
		registerVal15.lockAvailabilityText = registerVal10
		registerVal15.raritySet = arg4
		registerVal15.rarityName = CoD.BlackMarketUtility.CrateTypeStrings[registerVal9]
		registerVal15.rarity = arg5
		registerVal15.reveal = true
		registerVal15.drop = arg8
		registerVal14.models = registerVal15
		registerVal14.properties = {}
		for index15=1.000000, 5.000000, 1.000000 do
			local registerVal21 = {}
			registerVal21.emblem = "blacktransparent"
			registerVal21.image = "blacktransparent"
			registerVal21.category = "camo"
			registerVal21.rarity = "common"
			registerVal14.models[("fakeloot" .. index15)] = registerVal21
		end
		return registerVal14
	end

	local registerVal3 = Engine.GetLootItems(arg0, Enum.eModes.MODE_MULTIPLAYER, 0.000000, 25.000000)
	if registerVal3 ~= nil then
		for index10=1.000000, #, 1.000000 do
			local registerVal14 = Engine.TableFindRows(CoD.BlackMarketUtility.lootTableName, 1.000000, registerVal3[index10].id)
			if registerVal14 ~= nil then
				local registerVal15 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal14[1.000000], 2.000000)
				local registerVal16 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal14[1.000000], 3.000000)
				local registerVal17 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal14[1.000000], 0.000000)
				local registerVal18 = CoD.BlackMarketUtility.GetStringRefForLootItem(arg0, registerVal17, registerVal15)
				local registerVal19 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal17, registerVal15)
				local registerVal20 = CoD.BlackMarketUtility.GetSetPieceStringForLootItem(arg0, registerVal17, registerVal15)
				local registerVal21 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal14[1.000000], 6.000000)
				local registerVal22 = CoD.BlackMarketUtility.IsLimitedBlackMarketItem(registerVal17)
				if registerVal22 then
				end
				table.insert({}, __FUNC_8C1_(registerVal18, registerVal17, registerVal15, registerVal20, "limited", registerVal3[index10].datetime, registerVal3[index10].count, registerVal21))
			end
		end
	end
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("BlackMarketHistoryList", __FUNC_3C4_, true)
DataSources.BlackMarketHistoryList = registerVal2
function LUI.createMenu.BM_History(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BM_History")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "Blackmarket_extra"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BM_History.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, -45.000000, 35.000000)
	registerVal3:setTopBottom(true, true, -43.000000, 102.000000)
	registerVal3:setRGB(0.480000, 0.480000, 0.480000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_recentcontraband_bg"))
	registerVal4:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Screen = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 50.000000, 210.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 222.500000, 1057.500000)
	registerVal5:setTopBottom(true, false, 189.000000, 529.000000)
	registerVal5:setWidgetType(CoD.LootDecryptionWidget)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setSpacing(50.000000)
	registerVal5:setDataSource("BlackMarketHistoryList")
	local function __FUNC_1EBD_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "category"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal5:linkToElementModel(registerVal5, "category", true, __FUNC_1EBD_)
	local function __FUNC_207A_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_207A_)
	local function __FUNC_220C_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_220C_)
	local function __FUNC_22DE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "emblem")
		if registerVal4 then
			BlackMarketSetAsEmblem(registerVal1, arg0, arg2)
			local registerVal6 = {}
			registerVal6.elementName = "SelfIdentityBadge"
			registerVal6.clipName = "ShowBadge"
			PlayClipOnElement(registerVal1, registerVal6, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "calling_card")
			if registerVal4 then
				BlackMarketSetCallingCard(registerVal1, arg0, arg2)
				registerVal6 = {}
				registerVal6.elementName = "SelfIdentityBadge"
				registerVal6.clipName = "ShowBadge"
				PlayClipOnElement(registerVal1, registerVal6, arg2)
				return true
			else
				registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "taunt")
				registerVal4 = BlackMarketListItemCanEquip(arg0, arg2)
				if registerVal4 and registerVal4 then
					BlackMarketSetTaunt(registerVal1, arg0, arg2)
					return true
				else
					registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "gesture")
					registerVal4 = BlackMarketListItemCanEquip(arg0, arg2)
					if registerVal4 and registerVal4 then
						BlackMarketSetGesture(registerVal1, arg0, arg2)
						return true
					else
						registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "specialist_outfit")
						registerVal4 = BlackMarketListItemCanEquip(arg0, arg2)
						if registerVal4 and registerVal4 then
							BlackMarketSetSpecialistTheme(registerVal1, arg0, arg2)
							return true
						end
					end
				end
			end
		end
	end

	local function __FUNC_2693_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "emblem")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "calling_card")
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
				return false
			else
				registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "taunt")
				registerVal3 = BlackMarketListItemCanEquip(arg0, arg2)
				if registerVal3 and registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
					return true
				else
					registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "gesture")
					registerVal3 = BlackMarketListItemCanEquip(arg0, arg2)
					if registerVal3 and registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
						return true
					else
						registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "specialist_outfit")
						registerVal3 = BlackMarketListItemCanEquip(arg0, arg2)
						if registerVal3 and registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
							return true
						end
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "E", __FUNC_22DE_, __FUNC_2693_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.decryptionList = registerVal5
	local registerVal6 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, true, -453.000000, -110.000000)
	registerVal6:setTopBottom(true, false, 15.000000, 75.000000)
	local function __FUNC_2A81_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2A81_)
	local function __FUNC_2AD2_(arg1)
		registerVal6.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_2AD2_)
	registerVal1:addElement(registerVal6)
	registerVal1.SelfIdentityBadge = registerVal6
	local registerVal7 = CoD.BM_LogoRecently.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 101.580000, 497.040000)
	registerVal7:setTopBottom(true, false, 71.170000, 192.170000)
	registerVal7.RecentItems:setText(Engine.Localize("MPUI_RECENT_CONTRABAND_CAPS"))
	registerVal1:addElement(registerVal7)
	registerVal1.BMLogo = registerVal7
	local registerVal8 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal8:setTopBottom(false, true, -67.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_2B70_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_opened", __FUNC_2B70_)
	registerVal1:addElement(registerVal8)
	registerVal1.feFooterContainerNOTLobby = registerVal8
	local registerVal9 = CoD.BM_HorizontalCounter.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -105.000000, 95.000000)
	registerVal9:setTopBottom(false, false, 237.000000, 262.000000)
	local function __FUNC_2C05_(arg0, arg1)
		SetAsListHorizontalCounter(registerVal1, arg0, "decryptionList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_2C05_)
	registerVal1:addElement(registerVal9)
	registerVal1.horizontalCounter = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_2CC1_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		local function __FUNC_2F29_(arg0, arg1)
			local function __FUNC_3080_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.950000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3080_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3080_)
		end

		registerVal5:completeAnimation()
		registerVal1.decryptionList:setAlpha(0.000000)
		__FUNC_2F29_(registerVal5, {})
		local function __FUNC_3235_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.BMLogo:setAlpha(1.000000)
		__FUNC_3235_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_2CC1_
	registerVal10.DefaultState = registerVal11
	registerVal1.clipsPerState = registerVal10
	local function __FUNC_33E9_(arg1, arg2)
		SetMenuState(registerVal1, "DefaultState")
		local registerVal5 = {}
		registerVal5.elementName = "SelfIdentityBadge"
		registerVal5.clipName = "Hide"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_33E9_)
	local function __FUNC_3518_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_3595_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3518_, __FUNC_3595_, false)
	registerVal5.id = "decryptionList"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.decryptionList:processEvent(registerVal12)
	end
	local function __FUNC_3691_(arg1)
		arg1.LeftPanel:close()
		arg1.decryptionList:close()
		arg1.SelfIdentityBadge:close()
		arg1.BMLogo:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.horizontalCounter:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BM_History.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3691_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

