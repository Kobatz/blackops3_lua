-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_WeeklyContractsWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_BlackjackInfoWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_DailyContractWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_SpecialContractWidget")
require("ui.uieditor.menus.BlackMarket.BM_SpecialContracts")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_CommunityButton")
require("ui.uieditor.menus.ZMHD.ZMHD_Community_Theme")
require("ui.uieditor.widgets.BlackMarket.BM_LogoContracts")
local registerVal1 = {}
local function __FUNC_5A0_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "BlackMarketSpecialContract")
	registerVal2 = Engine.GetDStat(arg0, "weaponContractData", "currentValue")
	local registerVal3 = Engine.DvarInt(nil, "weapon_contract_target_value")
	if 0.000000 < registerVal3 then
	end
	local registerVal6 = Engine.CreateModel(registerVal1, "percent")
	Engine.SetModelValue(registerVal6, (registerVal2 / registerVal3))
	registerVal6 = Engine.CreateModel(registerVal1, "fractionText")
	Engine.SetModelValue(registerVal6, Engine.Localize("MPUI_X_SLASH_Y", registerVal2, registerVal3))
	registerVal6 = Engine.CreateModel(registerVal1, "isComplete")
	if 0.000000 >= registerVal3 or registerVal3 > registerVal2 then
	end
	Engine.SetModelValue(registerVal6, true)
	return registerVal1
end

registerVal1.getModel = __FUNC_5A0_
DataSources.BlackMarketSpecialContract = registerVal1
local function __FUNC_87C_(arg0)
	local registerVal2 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.dailyContractIndex)
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.index = registerVal2.index
	local registerVal7 = Engine.Localize(registerVal2.titleRef)
	registerVal6.title = registerVal7
	registerVal7 = Engine.Localize(registerVal2.descRef, registerVal2.targetValue)
	registerVal6.description = registerVal7
	registerVal6.percentComplete = (registerVal2.progress / registerVal2.targetValue)
	registerVal7 = Engine.Localize("MPUI_X_SLASH_Y", registerVal2.progress, registerVal2.targetValue)
	registerVal6.fractionText = registerVal7
	if registerVal2.targetValue > registerVal2.progress or 0.000000 >= registerVal2.targetValue then
	end
	registerVal6.isComplete = true
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	return {}
end

local function __FUNC_BA5_(arg0, arg1, arg2)
	local registerVal3 = Engine.DvarBool(nil, "contracts_enabled_mp")
	if registerVal3 and not arg1.dailyUpdateSubscription then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.GetModel(registerVal6, "contractDailyIndex")
		local function __FUNC_D0D_()
			arg1:updateDataSource()
		end

		registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_D0D_, false)
		arg1.dailyUpdateSubscription = registerVal3
	end
end

registerVal1 = ListHelper_SetupDataSource("BlackMarketDailyContracts", __FUNC_87C_, nil, nil, __FUNC_BA5_)
DataSources.BlackMarketDailyContracts = registerVal1
local function __FUNC_D5E_(arg0)
	table.insert({}, CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex1))
	table.insert({}, CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex2))
	local registerVal3, registerVal4, registerVal5 = ipairs({})
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.index = value7.index
		local registerVal12 = Engine.Localize(value7.titleRef)
		registerVal11.title = registerVal12
		registerVal12 = Engine.Localize(value7.descRef, value7.targetValue)
		registerVal11.description = registerVal12
		registerVal11.percentComplete = (value7.progress / value7.targetValue)
		registerVal12 = Engine.Localize("MPUI_X_SLASH_Y", value7.progress, value7.targetValue)
		registerVal11.fractionText = registerVal12
		if value7.targetValue > value7.progress or 0.000000 >= value7.targetValue then
		end
		registerVal11.isComplete = true
		registerVal10.models = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

local function __FUNC_1135_(arg0, arg1, arg2)
	local registerVal3 = Engine.DvarBool(nil, "contracts_enabled_mp")
	if registerVal3 then
		if not arg1.weeklyUpdateSubscriptionA then
			local registerVal6 = Engine.GetGlobalModel()
			local registerVal5 = Engine.GetModel(registerVal6, "contractWeeklyAIndex")
			local function __FUNC_133A_()
				arg1:updateDataSource()
			end

			registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_133A_, false)
			arg1.weeklyUpdateSubscriptionA = registerVal3
		end
		if not arg1.weeklyUpdateSubscriptionB then
			registerVal6 = Engine.GetGlobalModel()
			registerVal5 = Engine.GetModel(registerVal6, "contractWeeklyBIndex")
			local function __FUNC_138A_()
				arg1:updateDataSource()
			end

			registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_138A_, false)
			arg1.weeklyUpdateSubscriptionB = registerVal3
		end
	end
end

registerVal1 = ListHelper_SetupDataSource("BlackMarketWeeklyContracts", __FUNC_D5E_, nil, nil, __FUNC_1135_)
DataSources.BlackMarketWeeklyContracts = registerVal1
local function __FUNC_13DA_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "autoevents")
	registerVal3 = Engine.CreateModel(registerVal2, "cycled")
end

local function __FUNC_14AD_(arg0, arg1)
	local function __FUNC_1F4B_(arg0, arg1)
		LuaUtils.CycleContracts()
	end

	arg0:registerEventHandler("contracts_time_remaining_tick", __FUNC_1F4B_)
	arg0:addElement(LUI.UITimer.new(250.000000, "contracts_time_remaining_tick", false, arg0))
	LuaUtils.CycleContracts()
	local registerVal2 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal2 then
		registerVal2.ui_seen_new_contracts:set(1.000000)
		local registerVal3 = Dvar.ui_enablePromoMenu:get()
		if registerVal3 then
			registerVal2.ui_seen_community_contract:set(1.000000)
			registerVal2.ui_community_contract_milestone:set(CoD.GetThermometerUnlockIndex())
		end
		registerVal3 = IsTrifectaContractBreadcrumbActive(arg1)
		if registerVal3 then
			registerVal2.extraBytes[3.000000]:set(Engine.DvarInt(nil, "loot_trifecta_breadcrumb_index"))
		end
		local function __FUNC_1FB2_(arg2)
			local function __FUNC_210F_()
				if arg0.currentAlias then
					Engine.StopSound(arg0.currentAlias)
				end
			end

			LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_210F_)
			SendFrontendControllerZeroMenuResponse(arg1, "BlackMarket", "stopsounds")
			Engine.PlaySound(arg2)
			arg0.currentAlias = arg2
		end

		local function __FUNC_21AD_(arg0)
			if arg0.targetValue > arg0.progress then
			end
			return true
		end

		local function __FUNC_222B_(arg0)
			local registerVal3 = Engine.GetLootItems(arg0, Enum.eModes.MODE_MULTIPLAYER, 0.000000, 100.000000)
			if registerVal3 == nil or #arg0 == 0.000000 then
				return nil
			end
			local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
			for index7,value8 in registerVal4, registerVal5, registerVal6 do
				local registerVal9 = CoDShared.GetLootItemCategory(value8.id)
				if registerVal9 == "weapon" or registerVal9 == "melee_weapon" then
					return value8.datetime
				end
			end
		end

		local registerVal6 = CoD.GetContractStatValuesForIndex(arg1, LuaUtils.BMContracts.dailyContractIndex)
		local registerVal7 = CoD.GetContractStatValuesForIndex(arg1, LuaUtils.BMContracts.weeklyContractIndex1)
		local registerVal8 = CoD.GetContractStatValuesForIndex(arg1, LuaUtils.BMContracts.weeklyContractIndex2)
		local registerVal9 = __FUNC_21AD_(registerVal6)
		local registerVal10 = __FUNC_21AD_(registerVal7)
		if registerVal10 then
			registerVal10 = __FUNC_21AD_(registerVal8)
		end
		local registerVal12 = DataSources.SideBetCurrentChallenge.getModel(arg1)
		local registerVal11 = CoD.SafeGetModelValue(registerVal12, "isLocked")
		registerVal12 = __FUNC_222B_(arg1)
		local registerVal13 = registerVal2.ui_seen_contracts_menu:get()
		if registerVal13 == 0.000000 then
			registerVal2.ui_seen_contracts_menu:set(1.000000)
			__FUNC_1FB2_("vox_mark_first_time")
		else
			registerVal13 = registerVal2.ui_last_weapon_drop_vo_timestamp:get()
			registerVal13 = tonumber(Engine.GetCurrentUTCTimeStr())
			local registerVal14 = Engine.DvarInt(nil, "tu11_contracts_weapon_vo_time_limit")
			if registerVal12 and registerVal12 ~= registerVal13 and (registerVal13 - registerVal12) < registerVal14 then
				registerVal2.ui_last_weapon_drop_vo_timestamp:set(registerVal12)
				__FUNC_1FB2_("vox_mark_supply_drop")
			else
				registerVal13 = registerVal2.ui_seen_side_bet_congrats:get()
				if registerVal13 == 0.000000 and (not registerVal11) then
					registerVal2.ui_seen_side_bet_congrats:set(1.000000)
					__FUNC_1FB2_("vox_mark_calling_card")
				else
					registerVal13 = registerVal2.ui_seen_weekly_congrats:get()
					if registerVal13 == 0.000000 and registerVal10 then
						registerVal2.ui_seen_weekly_congrats:set(1.000000)
						__FUNC_1FB2_("vox_mark_weekly_reward")
					else
						registerVal13 = registerVal2.ui_seen_daily_congrats:get()
						if registerVal13 == 0.000000 and registerVal9 then
							registerVal2.ui_seen_daily_congrats:set(1.000000)
							__FUNC_1FB2_("vox_mark_daily_reward")
						else
							if registerVal9 and registerVal10 then
								__FUNC_1FB2_("vox_mark_no_contracts")
							else
								if registerVal9 and not registerVal10 then
									__FUNC_1FB2_("vox_mark_weekly_available")
								else
									if registerVal10 and not registerVal9 then
										__FUNC_1FB2_("vox_mark_daily_available")
									else
										__FUNC_1FB2_("vox_mark_weekly_daily_available")
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

local function __FUNC_2401_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BM_Contracts")
	if __FUNC_13DA_ then
		__FUNC_13DA_(registerVal1, arg0)
	end
	registerVal1.soundSet = "Blackmarket_extra"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BM_Contracts.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_bg_1080"))
	registerVal1:addElement(registerVal3)
	registerVal1.Screen = registerVal3
	local registerVal4 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, true, -453.000000, -110.000000)
	registerVal4:setTopBottom(true, false, 15.000000, 75.000000)
	local function __FUNC_38DD_(arg1)
		registerVal4:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_38DD_)
	local function __FUNC_392E_(arg1)
		registerVal4.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_392E_)
	registerVal1:addElement(registerVal4)
	registerVal1.SelfIdentityBadge = registerVal4
	local registerVal5 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_39CC_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_opened", __FUNC_39CC_)
	registerVal1:addElement(registerVal5)
	registerVal1.feFooterContainerNOTLobby = registerVal5
	local registerVal6 = CoD.BM_Contracts_WeeklyContractsWidget.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 310.000000, 794.000000)
	registerVal6:setTopBottom(true, false, 320.740000, 613.740000)
	registerVal1:addElement(registerVal6)
	registerVal1.WeeklyContractsWidget = registerVal6
	local registerVal7 = CoD.BM_Contracts_BlackjackInfoWidget.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 796.000000, 1213.000000)
	registerVal7:setTopBottom(true, false, 100.740000, 616.740000)
	registerVal7.Title:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK"))
	local function __FUNC_3A61_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_3A61_)
	local function __FUNC_3BF3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3BF3_)
	local function __FUNC_3CC2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsStorageValueEqualTo(arg2, "stats_mp", "blackjack_contract_count", 0.000000)
		registerVal4 = IsBlackjackContractActive(arg2)
		if not registerVal4 and not registerVal4 then
			local registerVal9 = {}
			registerVal9.self = registerVal1
			registerVal9.element = arg0
			OpenSystemOverlay(registerVal1, arg1, arg2, "BlackjackActivationConfirmation", registerVal9)
			return true
		end
	end

	local function __FUNC_3E2E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_ACTIVATE")
		local registerVal3 = IsStorageValueEqualTo(arg2, "stats_mp", "blackjack_contract_count", 0.000000)
		registerVal3 = IsBlackjackContractActive(arg2)
		if not registerVal3 and not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3CC2_, __FUNC_3E2E_, true)
	registerVal1:addElement(registerVal7)
	registerVal1.BlackjackInfo = registerVal7
	local registerVal8 = CoD.BM_Contracts_DailyContractWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 75.000000, 309.000000)
	registerVal8:setTopBottom(true, false, 320.740000, 613.740000)
	registerVal1:addElement(registerVal8)
	registerVal1.DailyContractWidget = registerVal8
	local registerVal9 = CoD.BM_Contracts_SpecialContractWidget.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 72.000000, 791.000000)
	registerVal9:setTopBottom(true, false, 101.740000, 319.740000)
	registerVal9.Title:setText(Engine.Localize("MPUI_BM_CONTRACT_SPECIAL"))
	local function __FUNC_3FE3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal9.SpecialContractPercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "CurrentSpecialContract", "percentComplete", __FUNC_3FE3_)
	local function __FUNC_419D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.SpecialContractPercentCompleteWidget.percentText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "CurrentSpecialContract", "fractionText", __FUNC_419D_)
	local function __FUNC_42B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.SpecialContractName:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "CurrentSpecialContract", "name", __FUNC_42B1_)
	local function __FUNC_4394_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.SpecialContractDesc:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "CurrentSpecialContract", "description", __FUNC_4394_)
	local function __FUNC_4477_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_4477_)
	local function __FUNC_4607_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_4607_)
	local function __FUNC_46D6_(arg0, arg1, arg2, arg3)
		OpenPopup(registerVal1, "BM_SpecialContracts", arg2, "", "")
		return true
	end

	local function __FUNC_475E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_46D6_, __FUNC_475E_, false)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hidden"
	local function __FUNC_485A_(arg0, arg1, arg2)
		return IsDvarValueEqualTo("enable_weapon_contract", false)
	end

	registerVal13.condition = __FUNC_485A_
	local registerVal14 = {}
	registerVal14.stateName = "Short"
	local function __FUNC_48D4_(arg1, arg2, arg3)
		local registerVal3 = IsDvarValueEqualTo("ui_enablePromoMenu", true)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg0, "CurrentSpecialContract.isComplete")
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_48D4_
	local registerVal15 = {}
	registerVal15.stateName = "Completed"
	local function __FUNC_49AD_(arg1, arg2, arg3)
		local registerVal3 = IsDvarValueEqualTo("ui_enablePromoMenu", false)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg0, "CurrentSpecialContract.isComplete")
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_49AD_
	local registerVal16 = {}
	registerVal16.stateName = "CompletedShort"
	local function __FUNC_4A81_(arg1, arg2, arg3)
		local registerVal3 = IsDvarValueEqualTo("ui_enablePromoMenu", true)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg0, "CurrentSpecialContract.isComplete")
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_4A81_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "CurrentSpecialContract.isComplete")
	local function __FUNC_4B55_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CurrentSpecialContract.isComplete"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_4B55_)
	registerVal1:addElement(registerVal9)
	registerVal1.SpecialContractWidget = registerVal9
	local registerVal10 = CoD.BM_Contracts_CommunityButton.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 73.000000, 431.000000)
	registerVal10:setTopBottom(true, false, 101.740000, 319.740000)
	registerVal10:setAlpha(0.000000)
	registerVal10.TitleAndDesc.SpecialContractName:setText(LocalizeToUpperString("CONTRACT_BGB_CC_TITLE"))
	registerVal10.TitleAndDesc.SpecialContractDesc:setText(Engine.Localize("MPUI_CONTRACTS_RTC_DESC"))
	local function __FUNC_4C8B_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		registerVal3 = IsDvarValueEqualTo("ui_enablePromoMenu", false)
		if registerVal3 then
			SetFocusToElement(registerVal1, "SpecialContractWidget", arg0)
			MakeNotFocusable(arg1)
		else
			CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_4C8B_)
	local function __FUNC_4EE3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_4EE3_)
	local function __FUNC_4FB2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDvarValueEqualTo("ui_enablePromoMenu", true)
		if registerVal4 then
			OpenOverlay(registerVal1, "ZMHD_Community_Theme", arg2, "", "")
			return true
		end
	end

	local function __FUNC_508D_(arg0, arg1, arg2)
		local registerVal3 = IsDvarValueEqualTo("ui_enablePromoMenu", true)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4FB2_, __FUNC_508D_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.CommunityButton = registerVal10
	local registerVal11 = CoD.BM_LogoContracts.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 32.040000, 423.040000)
	registerVal11:setTopBottom(true, false, 5.000000, 126.000000)
	registerVal11:setScale(0.950000)
	registerVal11.RecentItems:setText(Engine.Localize("MPUI_BM_CONTRACTS"))
	registerVal1:addElement(registerVal11)
	registerVal1.BMLogoContracts = registerVal11
	registerVal12 = {}
	registerVal12.left = registerVal8
	registerVal13 = {}
	registerVal13 = {registerVal9, registerVal10}
	registerVal12.up = registerVal13
	registerVal12.right = registerVal7
	registerVal6.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal6
	registerVal7.navigation = registerVal12
	registerVal12 = {}
	registerVal13 = {}
	registerVal13 = {registerVal9, registerVal10}
	registerVal12.up = registerVal13
	registerVal12.right = registerVal6
	registerVal8.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal10
	registerVal12.right = registerVal7
	registerVal13 = {}
	registerVal13 = {registerVal8, registerVal6}
	registerVal12.down = registerVal13
	registerVal9.navigation = registerVal12
	registerVal12 = {}
	registerVal12.right = registerVal9
	registerVal13 = {}
	registerVal13 = {registerVal8, registerVal6}
	registerVal12.down = registerVal13
	registerVal10.navigation = registerVal12
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_51E2_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.WeeklyContractsWidget:setLeftRight(true, false, 310.000000, 794.000000)
		registerVal1.WeeklyContractsWidget:setTopBottom(true, false, 284.740000, 613.740000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal1.DailyContractWidget:setLeftRight(true, false, 75.000000, 309.000000)
		registerVal1.DailyContractWidget:setTopBottom(true, false, 284.740000, 613.740000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.SpecialContractWidget:setLeftRight(true, false, 72.000000, 791.000000)
		registerVal1.SpecialContractWidget:setTopBottom(true, false, 102.740000, 281.740000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.CommunityButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_51E2_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_55C8_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.WeeklyContractsWidget:setLeftRight(true, false, 310.000000, 794.000000)
		registerVal1.WeeklyContractsWidget:setTopBottom(true, false, 320.740000, 613.740000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal1.DailyContractWidget:setLeftRight(true, false, 75.000000, 309.000000)
		registerVal1.DailyContractWidget:setTopBottom(true, false, 320.740000, 613.740000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.SpecialContractWidget:setLeftRight(true, false, 431.000000, 1150.000000)
		registerVal1.SpecialContractWidget:setTopBottom(true, false, 102.740000, 319.740000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.CommunityButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_55C8_
	registerVal12.CommunityVisible = registerVal13
	registerVal1.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "CommunityVisible"
	local function __FUNC_59AB_(arg0, arg1, arg2)
		return IsDvarValueEqualTo("ui_enablePromoMenu", true)
	end

	registerVal15.condition = __FUNC_59AB_
	registerVal14 = {registerVal15}
	registerVal1:mergeStateConditions(registerVal14)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_5A20_(arg1, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "SelfIdentityBadge"
		registerVal5.clipName = "Hide"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		ValidateBlackjackPurchase(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_5A20_)
	local function __FUNC_5B43_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		HandleGoBackFromContracts(registerVal1, arg0, arg2, "", arg1)
		StopMenuTrackedSound(arg1)
		return true
	end

	local function __FUNC_5C30_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5B43_, __FUNC_5C30_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "WeeklyContractsWidget"
	registerVal7.id = "BlackjackInfo"
	registerVal8.id = "DailyContractWidget"
	registerVal9.id = "SpecialContractWidget"
	registerVal10.id = "CommunityButton"
	registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.CommunityButton:processEvent(registerVal14)
	end
	local function __FUNC_5D2D_(arg1)
		arg1.SelfIdentityBadge:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.WeeklyContractsWidget:close()
		arg1.BlackjackInfo:close()
		arg1.DailyContractWidget:close()
		arg1.SpecialContractWidget:close()
		arg1.CommunityButton:close()
		arg1.BMLogoContracts:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BM_Contracts.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_5D2D_)
	if __FUNC_14AD_ then
		__FUNC_14AD_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BM_Contracts = __FUNC_2401_
