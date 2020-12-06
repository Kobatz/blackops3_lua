-- Decompiled with CoDLUIDecompiler by JariK

CoD.BubbleGumBuffUtility = {}
CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule = "gamedata/tables/zm/zm_gobblegumrecipescheduleutc.csv"
CoD.BubbleGumBuffUtility.GobbleGumRecipeList = "gamedata/tables/zm/zm_gobblegumrecipes.csv"
local registerVal2 = Engine.TableLookup(controller, CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule, 0.000000, 0.000000, 1.000000)
local registerVal1 = Engine.StringIntegerSubtraction(registerVal2, "86400")
CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleStartTime = registerVal1
local registerVal4 = Engine.GetTableRowCount(CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule)
local registerVal0 = Engine.TableLookup(controller, CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule, 0.000000, (registerVal4 - 1.000000), 1.000000)
registerVal2 = tonumber(Engine.StringIntegerSubtraction(registerVal0, CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleStartTime))
CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleEndOffset = registerVal2
CoD.BubbleGumBuffUtility.FreeDistillOffset = 1000.000000
CoD.BubbleGumBuffUtility.PaidDistillOffset = 2000.000000
CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID = 0.000000
CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID = 1.000000
CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_SKU_ID = 99064.000000
CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_SKU_ID = 99065.000000
CoD.BubbleGumBuffUtility.URM_FIRST_TIME_SKU_ID = 99075.000000
registerVal2 = {}
local function __FUNC_D00_(arg0)
	return CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
end

registerVal2.getModel = __FUNC_D00_
DataSources.GobbleGumRecipeInfo = registerVal2
function CoD.BubbleGumBuffUtility.ReloadCookbookSchedule()
	local registerVal2 = Engine.TableLookup(nil, CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule, 0.000000, 0.000000, 1.000000)
	local registerVal1 = Engine.StringIntegerSubtraction(registerVal2, "86400")
	CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleStartTime = registerVal1
	local registerVal4 = Engine.GetTableRowCount(CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule)
	local registerVal0 = Engine.TableLookup(nil, CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule, 0.000000, (registerVal4 - 1.000000), 1.000000)
	registerVal2 = tonumber(Engine.StringIntegerSubtraction(registerVal0, CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleStartTime))
	CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleEndOffset = registerVal2
end

function CoD.BubbleGumBuffUtility.GetCurrentGobbleGumRecipeIndices(arg0)
	local registerVal1 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal1, "scheduleIndex"))
	if not registerVal2 then
		local registerVal3 = Engine.GetCurrentGobbleGumRecipeScheduleIndex(arg0)
	end
	local registerVal6 = Engine.TableLookup(arg0, CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule, 0.000000, registerVal3, (2.000000 + 0.000000))
	table.insert({}, tonumber(registerVal6))
	return {}
end

function CoD.BubbleGumBuffUtility.GetGobbleGumRecipes(arg0)
	local registerVal2 = CoD.BubbleGumBuffUtility.GetCurrentGobbleGumRecipeIndices(arg0)
	local registerVal3, registerVal4, registerVal5 = pairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeForIndex(arg0, value7)
		table.insert({}, registerVal8)
	end
	return {}
end

function CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "GobbleGumRecipeInfo")
	if not registerVal1 then
		local registerVal3 = Engine.GetModelForController(arg0)
		registerVal2 = Engine.CreateModel(registerVal3, "GobbleGumRecipeInfo")
		Engine.CreateModel(registerVal2, "scheduleIndex")
		Engine.CreateModel(registerVal2, "remainingTime")
		Engine.CreateModel(registerVal2, "update")
		Engine.CreateModel(registerVal2, "haveAllIngredients")
		registerVal3 = Engine.CreateModel(registerVal2, "recipeDistillCost")
		Engine.SetModelValue(registerVal3, CoD.BubbleGumBuffUtility.GetRecipeDistillCost())
	end
	return registerVal2
end

function CoD.BubbleGumBuffUtility.GetGobbleGumRecipeForIndex(arg0, arg1)
	local registerVal4 = Engine.TableFindRows(CoD.BubbleGumBuffUtility.GobbleGumRecipeList, 0.000000, arg1)
	local registerVal5 = Engine.TableGetColumnValueForRow(CoD.BubbleGumBuffUtility.GobbleGumRecipeList, registerVal4[1.000000], 1.000000)
	if registerVal5 and registerVal5 ~= "" then
		local registerVal6 = CoD.BubbleGumBuffUtility.GetBubbleGumBuffInfoForRef(arg0, registerVal5)
		local registerVal7 = tonumber(Engine.TableGetColumnValueForRow(CoD.BubbleGumBuffUtility.GobbleGumRecipeList, registerVal4[1.000000], (1.000000 + 1.000000)))
		registerVal6.count = registerVal7
		{}.result = registerVal6
		{}.haveAllIngredients = true
		{}.recipeIndex = arg1
		{}.ingredients = {}
		local registerVal8 = {}
		registerVal8.have = 0.000000
		registerVal8.required = 0.000000
		local registerVal9 = Engine.TableGetColumnValueForRow(CoD.BubbleGumBuffUtility.GobbleGumRecipeList, registerVal4[1.000000], 3.000000)
		local registerVal10 = LUI.startswith(registerVal9, "#")
		registerVal10 = CoD.BubbleGumBuffUtility.GetBubbleGumBuffInfoForRef(arg0, registerVal9)
		local registerVal11 = Engine.GetUnlockableInfoModelByIndex(registerVal10.itemIndex, ("Unlockables." .. registerVal10.itemIndex), Enum.eModes.MODE_ZOMBIES)
		local registerVal12 = GetConsumableCountFromIndex(arg0, registerVal10.itemIndex)
		local registerVal13 = tonumber(Engine.TableGetColumnValueForRow(CoD.BubbleGumBuffUtility.GobbleGumRecipeList, registerVal4[1.000000], (3.000000 + 1.000000)))
		registerVal10.count = registerVal13
		registerVal13 = math.min(registerVal10.count, registerVal12)
		registerVal10.percentComplete = (registerVal13 / registerVal10.count)
		local registerVal14 = math.min(registerVal10.count, registerVal12)
		registerVal8.have = (registerVal8.have + registerVal14)
		registerVal8.required = (registerVal8.required + registerVal10.count)
		local registerVal15 = math.min(registerVal10.count, registerVal12)
		registerVal13 = Engine.Localize("MPUI_X_SLASH_Y", registerVal15, registerVal10.count)
		registerVal10.fractionText = registerVal13
		if {}.haveAllIngredients then
			if registerVal10.count > registerVal12 then
			end
		end
		{}.haveAllIngredients = true
		table.insert({}.ingredients, registerVal10)
		registerVal6.percentComplete = (registerVal8.have / registerVal8.required)
	end
	return {}
end

function CoD.BubbleGumBuffUtility.GetBubbleGumBuffInfoForIndex(arg0, arg1)
	local registerVal2 = Engine.GetUnlockableInfoModelByIndex(arg1, ("Unlockables." .. arg1), Enum.eModes.MODE_ZOMBIES)
	if registerVal2 then
		{}.itemIndex = arg1
	end
	return {}
end

function CoD.BubbleGumBuffUtility.GetBubbleGumBuffInfoForRef(arg0, arg1)
	local registerVal2 = Engine.GetItemIndexFromReference(arg1)
	return CoD.BubbleGumBuffUtility.GetBubbleGumBuffInfoForIndex(arg0, registerVal2)
end

CoD.BubbleGumBuffUtility.FREE_DISTILL = "free"
CoD.BubbleGumBuffUtility.X3_DISTILL = "x3"
CoD.BubbleGumBuffUtility.X6_DISTILL = "x6"
CoD.BubbleGumBuffUtility.X9_DISTILL = "x9"
function CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
	local registerVal0 = Engine.DvarBool(nil, "cookbookDebug")
	if registerVal0 ~= true then
	end
	return true
end

function CoD.BubbleGumBuffUtility.UseTestData()
	local registerVal0 = Engine.DvarBool(nil, "cookbookUseTestData")
	if registerVal0 ~= true then
	end
	return true
end

registerVal1 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
if registerVal1 then
	CoD.BubbleGumBuffUtility.Debug = {}
	registerVal2 = {}
	registerVal4 = {}
	registerVal4.uses = 0.000000
	local registerVal5 = Engine.GetServerUTCTimeStr()
	registerVal4.cooldown = registerVal5
	registerVal2[CoD.BubbleGumBuffUtility.FREE_DISTILL] = registerVal4
	registerVal4 = {}
	registerVal4.uses = 0.000000
	registerVal5 = Engine.GetServerUTCTimeStr()
	registerVal4.cooldown = registerVal5
	registerVal2[CoD.BubbleGumBuffUtility.X3_DISTILL] = registerVal4
	registerVal4 = {}
	registerVal4.uses = 0.000000
	registerVal5 = Engine.GetServerUTCTimeStr()
	registerVal4.cooldown = registerVal5
	registerVal2[CoD.BubbleGumBuffUtility.X6_DISTILL] = registerVal4
	registerVal4 = {}
	registerVal4.uses = 0.000000
	registerVal5 = Engine.GetServerUTCTimeStr()
	registerVal4.cooldown = registerVal5
	registerVal2[CoD.BubbleGumBuffUtility.X9_DISTILL] = registerVal4
	CoD.BubbleGumBuffUtility.Debug.DistillList = registerVal2
	function CoD.BubbleGumBuffUtility.Debug.RefillDistill(arg0, arg1)
		local registerVal2 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
		if registerVal2 then
			CoD.BubbleGumBuffUtility.Debug.DistillList[arg1].uses = (CoD.BubbleGumBuffUtility.Debug.DistillList[arg1].uses + 30.000000)
			local registerVal4 = Engine.GetServerUTCTimeStr()
			local registerVal3 = Engine.StringIntegerAddition(registerVal4, "60")
			CoD.BubbleGumBuffUtility.Debug.DistillList[arg1].cooldown = registerVal3
			return true
		end
		return false
	end

	registerVal2 = {}
	registerVal2 = {CoD.BubbleGumBuffUtility.FREE_DISTILL, CoD.BubbleGumBuffUtility.X3_DISTILL, CoD.BubbleGumBuffUtility.X6_DISTILL, CoD.BubbleGumBuffUtility.X9_DISTILL}
	CoD.BubbleGumBuffUtility.Debug.DISTILL_LIST = registerVal2
end
function CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg0, arg1)
	local registerVal2 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
	if registerVal2 then
		return CoD.BubbleGumBuffUtility.Debug.DistillList[arg1].uses
	end
	registerVal2 = DataSources.GobbleGumDistills.getModel(arg0)
	if registerVal2 then
		if arg1 == CoD.BubbleGumBuffUtility.FREE_DISTILL then
			Engine.GetModel(registerVal2, "freeDistills")
			return Engine.GetModelValue(Engine.GetModel)
		else
			Engine.GetModel(registerVal2, "paidDistills")
			return Engine.GetModelValue(Engine.GetModel)
		end
	end
	return 0.000000
end

function CoD.BubbleGumBuffUtility.GetDistillCooldown(arg0, arg1)
	local registerVal2 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
	if registerVal2 then
		registerVal2 = math.max(0.000000, tonumber(Engine.StringIntegerSubtraction(CoD.BubbleGumBuffUtility.Debug.DistillList[arg1].cooldown, Engine.GetServerUTCTimeStr())))
		if arg1 ~= CoD.BubbleGumBuffUtility.FREE_DISTILL or not registerVal2 then
		end
		return 0.000000
	end
	local registerVal3 = Engine.GetInventoryItem(arg0, Engine.DvarInt(nil, ("loot_distill_" .. arg1 .. "_consumable_id")))
	if arg1 == CoD.BubbleGumBuffUtility.FREE_DISTILL and registerVal3 then
		local registerVal4 = tonumber(Engine.StringIntegerSubtraction(registerVal3.expireTimeStr, Engine.GetServerUTCTimeStr()))
	end
	return registerVal4
end

function CoD.BubbleGumBuffUtility.GetTotalRemainingDistills(arg0)
	local registerVal1 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
	if registerVal1 then
		local registerVal2, registerVal3, registerVal4 = pairs(CoD.BubbleGumBuffUtility.Debug.DistillList)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
		end
		return (0.000000 + value6.uses)
	end
	registerVal1 = DataSources.GobbleGumDistills.getModel(arg0)
	if registerVal1 then
		Engine.GetModel(registerVal1, "totalDistills")
		return Engine.GetModelValue(Engine.GetModel)
	end
	return -1.000000
end

function CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
	local registerVal0 = Dvar.loot_recipe_distill_cost:exists()
	registerVal0 = Dvar.loot_recipe_distill_cost:get()
	if  or not registerVal0 then
	end
	return 10.000000
end

function CoD.BubbleGumBuffUtility.SpendDistill(arg0)
	local registerVal1 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
	if registerVal1 then
		registerVal1, registerVal2, registerVal3 = ipairs(CoD.BubbleGumBuffUtility.Debug.DISTILL_LIST)
		for index4,value5 in registerVal1, registerVal2, registerVal3 do
			if 0.000000 < CoD.BubbleGumBuffUtility.Debug.DistillList[value5].uses then
				local registerVal8 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
				CoD.BubbleGumBuffUtility.Debug.DistillList[value5].uses = (CoD.BubbleGumBuffUtility.Debug.DistillList[value5].uses - registerVal8)
			else
			end
		end
		return 
	end
end

function CoD.BubbleGumBuffUtility.ScheduleTimerTick(arg0)
	local registerVal2 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "scheduleIndex")
	local registerVal3 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
	registerVal2 = Engine.GetModel(registerVal3, "remainingTime")
	registerVal3 = Engine.GetModelValue(registerVal1)
	if not registerVal3 then
		local registerVal4 = Engine.GetCurrentGobbleGumRecipeScheduleIndex(arg0)
		Engine.SetModelValue(registerVal1, registerVal4)
	end
	registerVal4 = Engine.TableLookupGetColumnValueForRow(CoD.BubbleGumBuffUtility.GobbleGumRecipeSchedule, registerVal4, 1.000000)
	local registerVal5 = Engine.GetServerUTCTimeStr()
	local registerVal6 = Dvar.live_enableDailyChallengesDebugTimestamp:get()
	if registerVal6 then
		local registerVal9 = Dvar.live_debugDailyChallengesMinute:get()
		registerVal6 = Engine.StringIntegerAddition(registerVal5, tostring((registerVal9 * 60.000000)))
		registerVal9 = Dvar.live_debugDailyChallengesHour:get()
		registerVal6 = Engine.StringIntegerAddition(registerVal6, tostring((registerVal9 * 3600.000000)))
		registerVal9 = tostring(Dvar.live_debugDailyChallengesDay:get())
		registerVal6 = Engine.StringIntegerAddition(registerVal6, Engine.StringIntegerMultiplication(registerVal9, "86400"))
	end
	registerVal6 = tonumber(registerVal6)
	local registerVal7 = tonumber(CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleStartTime)
	if registerVal7 < registerVal6 then
		registerVal7 = tonumber(Engine.StringIntegerSubtraction(registerVal6, CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleStartTime))
		registerVal6 = tostring((registerVal7 % CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleEndOffset))
		registerVal6 = Engine.StringIntegerSubtraction(registerVal4, CoD.BubbleGumBuffUtility.GobbleGumRecipeScheduleStartTime)
	end
	registerVal6 = Engine.StringIntegerSubtraction(registerVal6, registerVal6)
	registerVal7 = tonumber(registerVal6)
	if registerVal7 > 0.000000 then
		registerVal7 = tonumber(registerVal6)
		if 0.000000 < registerVal4 and registerVal7 <= 86400.000000 then
			registerVal7 = Engine.IsLootReady(arg0)
			if registerVal7 then
				Engine.SetModelValue(registerVal1, Engine.GetCurrentGobbleGumRecipeScheduleIndex(arg0))
			end
		end
	end
	Engine.SetModelValue(registerVal2, "0")
end

