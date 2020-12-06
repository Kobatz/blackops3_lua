-- Decompiled with CoDLUIDecompiler by JariK

LUI.CoDMetrics = {}
local function __FUNC_704_(arg0)
	for index1=1.000000, Enum.LUIButton.LUI_BUTTON_COUNT, 1.000000 do
		local registerVal6 = Engine.GetModelForController(arg0)
		local registerVal5 = Engine.GetModel(registerVal6, ("ButtonBits." .. index1))
		local registerVal7 = Engine.GetModelValue(registerVal5)
		registerVal6 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal7, Enum.LUIButtonFlags.FLAG_DOWN)
		if registerVal5 and registerVal6 then
			return index1
		end
	end
	return Enum.LUIButton.LUI_KEY_NONE
end

function LUI.CoDMetrics.LobbyInit()
	if not LUI.CoDMetrics.lobbyElement then
		local registerVal1 = LUI.UIElement.new()
		LUI.CoDMetrics.lobbyElement = registerVal1
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot.lobbyNav")
		local function __FUNC_AE7_(arg0)
			local registerVal1 = Engine.GetModelValue(arg0)
			if LUI.CoDMetrics.menuID ~= nil and LUI.CoDMetrics.menuID ~= registerVal1 then
				local registerVal3 = LobbyData:UITargetFromId(LUI.CoDMetrics.menuID)
				local registerVal4 = Engine.milliseconds()
				LUI.CoDMetrics.ScreenView(0.000000, registerVal3.name, (registerVal4 - LUI.CoDMetrics.openTime), nil)
			end
			LUI.CoDMetrics.menuID = registerVal1
			registerVal3 = Engine.milliseconds()
			LUI.CoDMetrics.openTime = registerVal3
		end

		LUI.CoDMetrics.lobbyElement:subscribeToModel(registerVal2, __FUNC_AE7_)
	end
end

function LUI.CoDMetrics.OpenMenu(arg0)
	local registerVal1 = Engine.milliseconds()
	arg0.openTime = registerVal1
end

function LUI.CoDMetrics.CloseMenu(arg0)
	local registerVal1 = arg0:getOwner()
	if registerVal1 == nil then
	end
	if arg0.openTime then
		local registerVal3 = Engine.milliseconds()
	end
	LUI.CoDMetrics.ScreenView(0.000000, arg0.menuName, (registerVal3 - arg0.openTime), arg0.crm_message_id)
end

function LUI.CoDMetrics.GetGroupsIDList(arg0)
	local registerVal1 = Engine.GetGroupIDList(arg0, Enum.GroupBufferType.GROUP_BUFFER_TYPE_SELF)
	if registerVal1 == nil or #arg0 == 0.000000 then
		return "0"
	end
	local registerVal2 = Engine.Int64AsString(registerVal1[1.000000])
	for index3=2.000000, #, 1.000000 do
		local registerVal9 = Engine.Int64AsString(registerVal1[index3])
	end
	return (registerVal2 .. "," .. registerVal9)
end

local function __FUNC_1084_(arg0, arg1, arg2, arg3)
	local registerVal4 = __FUNC_704_(arg0)
	local registerVal9 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "screen_view", "group_id", registerVal9, "screen_id", arg1, "screen_duration", arg2, "button_presed", registerVal4, "crm_message_id", arg3)
end

LUI.CoDMetrics.ScreenView = __FUNC_1084_
function LUI.CoDMetrics.StoreEntry(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetSkuRegion()
	local registerVal5, registerVal6 = Engine.RecordStoreSessionEntry(arg1)
	local registerVal11 = LUI.CoDMetrics.GetGroupsIDList(arg1)
	local registerVal15 = Engine.GetModeName()
	local registerVal21 = tostring(registerVal5)
	Engine.RecordComScoreEvent(arg1, "store_entry", "group_id", registerVal11, "store_source", arg3.name, "store_gamemode", registerVal15, "store_action_source", arg2, "store_region", registerVal4, "store_session_id", registerVal21, "store_transaction_id", tostring(registerVal6))
end

function LUI.CoDMetrics.StoreItemViewed(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.CreateModel(registerVal4, "StoreRoot")
	local registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "actionSource", true))
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "storeSource", true))
	local registerVal8 = Engine.GetSkuRegion()
	local registerVal13 = LUI.CoDMetrics.GetGroupsIDList(arg1)
	local registerVal17 = Engine.GetModeName()
	Engine.RecordComScoreEvent(arg1, "store_item_browse", "group_id", registerVal13, "store_source", registerVal7, "store_gamemode", registerVal17, "store_action_source", registerVal6, "product_id", arg2, "product_browse_duration", arg3, "store_region", registerVal8)
end

function LUI.CoDMetrics.InventoryItemPurchased(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetSkuRegion()
	local registerVal6 = Engine.IsDedicatedServer()
	if not registerVal6 then
		registerVal6, registerVal7 = Engine.GetStoreSessionAndTransactionID(arg0)
		local registerVal12 = LUI.CoDMetrics.GetGroupsIDList(arg0)
		local registerVal16 = Engine.GetModeName()
		local registerVal26 = tostring(registerVal6)
		Engine.RecordComScoreEvent(arg0, "dw_inventory_item_purchase", "group_id", registerVal12, "store_source", arg2, "store_gamemode", registerVal16, "product_name", arg1, "product_cost_cp", arg3, "store_region", registerVal5, "PurchaseCompleted", arg4, "store_session_id", registerVal26, "store_transaction_id", tostring(registerVal7))
		Engine.IncrementStoreTransaction(arg0)
	end
end

function LUI.CoDMetrics.InventoryItemEquipped(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetSkuRegion()
	local registerVal9 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	local registerVal11 = Engine.GetModeName()
	Engine.RecordComScoreEvent(arg0, "dw_inventory_item_equip", "group_id", registerVal9, "store_gamemode", registerVal11, "product_name", arg1, "product_id", arg2, "product_equip_location", arg3, "store_region", registerVal4)
end

function LUI.CoDMetrics.AccountCreated(arg0, arg1, arg2, arg3)
	local registerVal8 = LUI.CoDMetrics.GetGroupsIDList(arg1)
	Engine.RecordComScoreEvent(arg1, "create_account", "group_id", registerVal8, "opt_in_flag", arg2, "account_source", arg3)
end

function LUI.CoDMetrics.CRMMessageImpression(arg0, arg1, arg2)
	if arg2 == "crm_featured" then
		local registerVal5 = Engine.GetGlobalModel()
		local registerVal4 = Engine.GetModel(registerVal5, "FeaturedCardsRoot")
		registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "CardSequence"))
		local registerVal7 = Engine.GetModelForController(arg1)
		local registerVal6 = Engine.GetModel(registerVal7, "FeaturedCards")
		registerVal7 = Engine.GetModel(registerVal6, (registerVal5 + 1.000000))
		if not registerVal7 then
			return 
		end
		local registerVal8 = Engine.GetModelValue(Engine.GetModel(registerVal7, "index"))
		local registerVal9 = Engine.GetFeaturedCard(registerVal8)
		if not registerVal9 then
			return 
		end
		if registerVal9.type ~= Enum.FeaturedCardType.FEATURED_CARD_TYPE_CRM then
			return 
		end
		local registerVal10 = Engine.GetMarketingMessage(arg1, arg2, registerVal8)
	else
		registerVal4 = Engine.GetMarketingMessage(arg1, arg2)
	end
	if not registerVal4 then
		return 
	end
	if arg0.openTime then
		registerVal5 = Engine.milliseconds()
	end
	registerVal9 = LUI.CoDMetrics.GetGroupsIDList(arg1)
	Engine.RecordComScoreEvent(arg1, "crm_message_view", "group_id", registerVal9, "crm_message_id", registerVal4.messageID, "crm_screen_id", registerVal4.locationID, "crm_message_duration", (registerVal5 - arg0.openTime))
end

function LUI.CoDMetrics.CRMMessageInteraction(arg0, arg1, arg2, arg3, arg4)
	if arg2 == "crm_featured" then
		local registerVal7 = Engine.GetGlobalModel()
		local registerVal6 = Engine.GetModel(registerVal7, "FeaturedCardsRoot")
		registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal6, "CardSequence"))
		local registerVal9 = Engine.GetModelForController(arg1)
		local registerVal8 = Engine.GetModel(registerVal9, "FeaturedCards")
		registerVal9 = Engine.GetModel(registerVal8, (registerVal7 + 1.000000))
		if not registerVal9 then
			return 
		end
		local registerVal10 = Engine.GetModelValue(Engine.GetModel(registerVal9, "index"))
		local registerVal11 = Engine.GetFeaturedCard(registerVal10)
		if not registerVal11 then
			return 
		end
		if registerVal11.type ~= Enum.FeaturedCardType.FEATURED_CARD_TYPE_CRM then
			return 
		end
		local registerVal12 = Engine.GetMarketingMessage(arg1, arg2, registerVal10)
	else
		registerVal6 = Engine.GetMarketingMessage(arg1, arg2)
	end
	if not registerVal6 then
		return 
	end
	if not arg3 then
	end
	if not arg4 then
	end
	registerVal10 = LUI.CoDMetrics.GetGroupsIDList(arg1)
	Engine.RecordComScoreEvent(arg1, "crm_message_click", "group_id", registerVal10, "crm_message_id", registerVal6.messageID, "crm_screen_id", registerVal6.locationID, "interaction_type", "", "interaction_details", "")
end

function LUI.CoDMetrics.PaintshopEvent(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal12 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "paint_shop", "group_id", registerVal12, "operation", arg1, "duration", arg2, "weapon_id", arg3, "paint_job_title", arg4, "assets_used", arg5, "slots_used", arg6, "total_slots", arg7)
end

function LUI.CoDMetrics.GunsmithEvent(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal12 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "gunsmith", "group_id", registerVal12, "operation", arg1, "duration", arg2, "weapon_id", arg3, "weapon_title", arg4, "attachments_used", arg5, "slots_used", arg6, "total_slots", arg7)
end

function LUI.CoDMetrics.EmblemEvent(arg0, arg1, arg2, arg3, arg4)
	local registerVal9 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "save_emblem", "group_id", registerVal9, "duration", arg1, "assets_used", arg2, "slots_used", arg3, "total_slots", arg4)
end

function LUI.CoDMetrics.PrestigeEvent(arg0, arg1, arg2, arg3)
	local registerVal8 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "prestige", "group_id", registerVal8, "old_prestige", arg1, "new_prestige", arg2, "game_mode", arg3)
end

function LUI.CoDMetrics.WatchVideoEvent(arg0, arg1)
	local registerVal6 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "watch_video", "group_id", registerVal6, "video_id", arg1.fileID, "video_length", arg1.duration, "video_author", arg1.authorName, "video_ispooled", arg1.isPooled)
end

function LUI.CoDMetrics.ScreenshotEvent(arg0, arg1, arg2, arg3, arg4)
	local registerVal9 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "screenshot", "group_id", registerVal9, "operation", arg1, "slotsUsed", arg3, "totalSlots", arg4)
end

function LUI.CoDMetrics.ClipsEvent(arg0, arg1, arg2, arg3, arg4)
	local registerVal9 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "clip", "group_id", registerVal9, "operation", arg1, "slotsUsed", arg3, "totalSlots", arg4)
end

function LUI.CoDMetrics.FileshareEvent(arg0, arg1, arg2, arg3, arg4)
	local registerVal9 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "fileshare", "group_id", registerVal9, "category", arg2, "operation", arg1, "slotsUsed", arg3, "totalSlots", arg4)
end

function LUI.CoDMetrics.DailyChallengeAbandonedEvent(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal10 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "daily_challenge_abandoned", "group_id", registerVal10, "challenge_id", arg1, "challenge_start_time", arg2, "challenge_progress", arg3, "challenge_time_ingame", arg4, "challenge_games_played", arg5)
end

function LUI.CoDMetrics.CookGobbleGumRecipeEvent(arg0, arg1)
	local registerVal6 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "cook_gobblegum_recipe", "group_id", registerVal6, "recipe_id", arg1)
end

function LUI.CoDMetrics.JoinGroupEvent(arg0, arg1, arg2)
	local registerVal7 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	local registerVal9 = Engine.Int64AsString(arg1)
	Engine.RecordComScoreEvent(arg0, "join_group", "group_id", registerVal7, "group", registerVal9, "group_join_type", arg2)
end

function LUI.CoDMetrics.LeaveGroupEvent(arg0, arg1, arg2)
	local registerVal7 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	local registerVal9 = Engine.Int64AsString(arg1)
	Engine.RecordComScoreEvent(arg0, "leave_group", "group_id", registerVal7, "group", registerVal9, "group_deleted", arg2)
end

function LUI.CoDMetrics.CreateGroupEvent(arg0, arg1, arg2)
	local registerVal7 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	local registerVal9 = Engine.Int64AsString(arg1)
	Engine.RecordComScoreEvent(arg0, "create_group", "group_id", registerVal7, "group", registerVal9, "group_type", arg2)
end

function LUI.CoDMetrics.VialsSpentSuccessEvent(arg0, arg1, arg2, arg3)
	local registerVal8 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "spend_vials_success", "group_id", registerVal8, "vials_spent", arg1, "vials_before", arg2, "vials_after", arg3)
end

function LUI.CoDMetrics.VialsSpentFailureEvent(arg0, arg1, arg2, arg3)
	local registerVal8 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "spend_vials_failure", "group_id", registerVal8, "vials_spent", arg1, "vials_before", arg2, "vials_after", arg3)
end

function LUI.CoDMetrics.ExperimentPromoFeatureCardEvent(arg0, arg1)
	local registerVal6 = LUI.CoDMetrics.GetGroupsIDList(arg0)
	Engine.RecordComScoreEvent(arg0, "black_market_experiment_featured", "group_id", registerVal6, "exp_group_number", arg1)
end

function LUI.CoDMetrics.BlackmarketExperimentEvent(arg0, arg1, arg2, arg3)
	Engine.RecordComScoreEvent(arg0, "black_market_experiment", "promo", arg1, "status", arg2, "exp_group_number", arg3)
end

