-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_CardWidget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Challenges.Challenges_CallingCardProfiler_Master")
local function __FUNC_352_(arg0)
	for index3=Enum.eModes.MODE_FIRST, (Enum.eModes.MODE_COUNT - 1.000000), 1.000000 do
		local registerVal7 = Engine.GetChallengeInfoForImages(arg0, nil, index3)
		local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			value12.gameMode = index3
			table.insert({}, value12)
		end
	end
	local function __FUNC_10CA_(arg0, arg1)
		if arg0.isMastery ~= arg1.isMastery then
			return arg1.isMastery
		end
		if arg0.isLocked ~= arg1.isLocked then
			return arg1.isLocked
		end
		if arg0.gameMode ~= arg1.gameMode then
			if arg1.gameMode >= arg0.gameMode then
			end
			return true
		end
		if arg0.challengeCategory ~= arg1.challengeCategory then
			if CoD.ChallengesUtility.ChallengeCategoryValues[arg0.gameMode][arg0.challengeCategory] and CoD.ChallengesUtility.ChallengeCategoryValues[arg0.gameMode][arg1.challengeCategory] then
				if CoD.ChallengesUtility.ChallengeCategoryValues[arg0.gameMode][arg0.challengeCategory] >= CoD.ChallengesUtility.ChallengeCategoryValues[arg0.gameMode][arg1.challengeCategory] then
				end
				return true
			else
				if CoD.ChallengesUtility.ChallengeCategoryValues[arg0.gameMode][arg0.challengeCategory] == nil then
				end
				return true
			end
		end
		local registerVal2 = tonumber(arg0.challengeRow)
		local registerVal3 = tonumber(arg1.challengeRow)
		if registerVal2 >= registerVal3 then
		end
		return true
	end

	table.sort({}, __FUNC_10CA_)
	local registerVal5, registerVal6, registerVal7 = ipairs({})
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.challengeRow ~= nil and CoD.ChallengesUtility.ChallengeCategoryValues[value9.gameMode][value9.challengeCategory] ~= nil then
			if value9.gameMode == Enum.eModes.MODE_CAMPAIGN then
				local registerVal32 = Engine.Localize("MENU_CAMPAIGN")
			else
				if value9.gameMode == Enum.eModes.MODE_MULTIPLAYER then
					registerVal32 = Engine.Localize("MENU_MULTIPLAYER")
				else
					if value9.gameMode == Enum.eModes.MODE_ZOMBIES then
						registerVal32 = Engine.Localize("MENU_ZOMBIES")
					end
				end
			end
			registerVal32 = CoD.getStatsMilestoneTable((value9.tableNum + 1.000000), value9.gameMode)
			local registerVal33 = Engine.TableLookupGetColumnValueForRow(registerVal32, value9.challengeRow, CoD.ChallengesUtility.NameStringCol)
			local registerVal34 = Engine.TableLookupGetColumnValueForRow(registerVal32, value9.challengeRow, CoD.ChallengesUtility.NameStringCol)
			if not value9.isMastery then
				if {} or not {}[("zm" .. "_" .. value9.challengeCategory)] then
					{}[("zm" .. "_" .. value9.challengeCategory)] = 0.000000
					{}[("zm" .. "_" .. value9.challengeCategory)] = 0.000000
				end
				{}[("zm" .. "_" .. value9.challengeCategory)] = ({}[("zm" .. "_" .. value9.challengeCategory)] + 1.000000)
				if not value9.isLocked then
					{}[("zm" .. "_" .. value9.challengeCategory)] = ({}[("zm" .. "_" .. value9.challengeCategory)] + 1.000000)
				else
					if value9.challengeType == CoD.MILESTONE_WEAPON then
						local registerVal35 = Engine.Localize(Engine.GetItemName(value9.itemIndex))
					else
						if value9.challengeType == CoD.MILESTONE_GROUP then
							local registerVal37 = Engine.GetItemGroupByIndex(value9.itemIndex)
							registerVal35 = Engine.Localize(("CHALLENGE_TYPE_" .. registerVal37))
						else
							if value9.challengeType == CoD.MILESTONE_ATTACHMENTS then
								registerVal35 = Engine.Localize(Engine.GetAttachmentNameByIndex(value9.itemIndex))
							else
								if value9.challengeType == CoD.MILESTONE_GAMEMODE then
									registerVal37 = Engine.GetGametypeName(value9.itemIndex)
									registerVal35 = Engine.Localize(("CHALLENGE_TYPE_" .. registerVal37))
								end
							end
						end
					end
					registerVal35 = Engine.Localize(registerVal33, "", registerVal35)
					if not nil then
						registerVal35 = Engine.Localize((registerVal34 .. "_DESC"), "", registerVal35)
					end
					if {}[("zm" .. "_" .. value9.challengeCategory)] ~= {}[("zm" .. "_" .. value9.challengeCategory)] then
					end
					if ("zm" .. "_" .. value9.challengeCategory) == "mp_onehundredpercent" then
						registerVal37 = DataSources.ChallengesMPCategoryStats.getModel(arg0)
						local registerVal38 = Engine.GetModelValue(Engine.GetModel(registerVal37, "mp"))
						if registerVal38 ~= 1.000000 then
						end
					else
					end
					local registerVal39 = {}
					local registerVal40 = {}
					registerVal40.title = registerVal35
					registerVal40.description = registerVal35
					registerVal40.iconId = value9.imageID
					registerVal40.percentComplete = ({}[("zm" .. "_" .. value9.challengeCategory)] / {}[("zm" .. "_" .. value9.challengeCategory)])
					registerVal40.challengeCategory = value9.challengeCategory
					registerVal40.gameMode = value9.gameMode
					registerVal40.gameModeName = registerVal32
					registerVal40.gameModeIcon = CoD.ChallengesUtility.GameModeIcons.ZM
					registerVal40.isLocked = (not value9.challengeCategory)
					registerVal39.models = registerVal40
					registerVal39.properties = {}
					table.insert({}, registerVal39)
				end
			end
		end
	end
	registerVal5 = ArenaChallengesEnabled()
	if registerVal5 then
		table.insert({}, CoD.ArenaUtility.GetArenaVetMasterCard(arg0))
	end
	local function __FUNC_13A8_(arg0, arg1)
		if arg0.models.isLocked ~= arg1.models.isLocked then
			return arg1.models.isLocked
		end
		if arg0.models.gameMode ~= arg1.models.gameMode then
			if arg1.models.gameMode >= arg0.models.gameMode then
			end
			return true
		end
		if CoD.ChallengesUtility.ChallengeCategoryValues[arg0.models.gameMode][arg0.models.challengeCategory] >= CoD.ChallengesUtility.ChallengeCategoryValues[arg0.models.gameMode][arg1.models.challengeCategory] then
		end
		return true
	end

	table.sort({}, __FUNC_13A8_)
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("MasterCallingCardsSorted", __FUNC_352_, true)
DataSources.MasterCallingCardsSorted = registerVal1
registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Stickerbook_Master = registerVal1
function CoD.CallingCards_Stickerbook_Master.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Stickerbook_Master)
	registerVal2.id = "CallingCards_Stickerbook_Master"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 10.000000, 750.000000)
	registerVal3:setTopBottom(true, false, 16.000000, 496.000000)
	registerVal3:setDataSource("MasterCallingCardsSorted")
	registerVal3:setWidgetType(CoD.CallingCards_CardWidget)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(10.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_1D4D_(arg0, arg2)
		local registerVal3 = IsElementInState(arg0, "New")
		if registerVal3 then
			CallingCards_SetOld(arg0, arg1)
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_1D4D_)
	local function __FUNC_1DEC_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_1DEC_)
	local function __FUNC_1F7F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1F7F_)
	local function __FUNC_204E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		if not registerVal4 then
			CallingCards_SetPlayerBackground(arg1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2100_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Locked")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_204E_, __FUNC_2100_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardGrid = registerVal3
	local registerVal4 = CoD.Challenges_CallingCardProfiler_Master.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -22.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardProfiler = registerVal4
	local function __FUNC_2248_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_2248_)
	registerVal3.id = "CallingCardGrid"
	local function __FUNC_229A_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_229A_)
	local function __FUNC_23A3_(arg0)
		arg0.CallingCardGrid:close()
		arg0.CallingCardProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_23A3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

